import 'package:coordonate_app/dependency_injection.dart';
import 'package:coordonate_app/features/auth/presentation/bloc/otp/opt_state.dart';
import 'package:coordonate_app/features/auth/presentation/bloc/otp/otp_bloc.dart';
import 'package:coordonate_app/features/auth/presentation/bloc/otp/otp_event.dart';
import 'package:coordonate_app/features/auth/presentation/widgets/resend_timer.dart';
import 'package:coordonate_app/features/auth/presentation/widgets/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pinput/pinput.dart';

class OTPInput extends StatefulWidget {
  const OTPInput({required this.email, super.key});

  @override
  State<OTPInput> createState() => _PinputExampleState();

  final String email;
}

class _PinputExampleState extends State<OTPInput> {
  final pinController = TextEditingController();
  final focusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  bool isValid = true;
  late int otp;

  @override
  void dispose() {
    pinController.dispose();
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const focusedBorderColor = Color.fromRGBO(23, 171, 144, 1);
    const fillColor = Color.fromRGBO(243, 246, 249, 0);
    const borderColor = Color.fromRGBO(23, 171, 144, 0.4);

    final defaultPinTheme = PinTheme(
      width: 56.w,
      height: 70.h,
      textStyle: TextStyle(
        fontSize: 22.sp,
        color: const Color.fromRGBO(30, 60, 87, 1),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(19.r),
        border: Border.all(color: borderColor),
      ),
    );

    /// Optionally you can use form to validate the Pinput
    return Padding(
      padding: EdgeInsets.all(35.w),
      child: BlocProvider(
        create: (context) => sl<ResetPasswordBloc>(),
        child: Center(
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Directionality(
                  // Specify direction if desired
                  textDirection: TextDirection.ltr,
                  child: BlocListener<ResetPasswordBloc, ResetPasswordState>(
                    listener: (context, state) {
                      if (state is ResetPasswordFailureState) {
                        setState(() {
                          isValid = false;
                        });
                      }
                      // TODO: implement listener
                    },
                    child: Pinput(
                      controller: pinController,
                      focusNode: focusNode,
                      androidSmsAutofillMethod:
                          AndroidSmsAutofillMethod.smsUserConsentApi,
                      listenForMultipleSmsOnAndroid: true,
                      defaultPinTheme: defaultPinTheme,
                      validator: (value) {
                        return isValid ? null : 'Pin is incorrect';
                      },
                      hapticFeedbackType: HapticFeedbackType.lightImpact,
                      onCompleted: (pin) {
                        setState(() {
                          otp = int.parse(pin);
                        });
                      },
                      onChanged: (value) {
                        setState(() {
                          otp = int.parse(value);
                        });
                      },
                      cursor: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            margin: EdgeInsets.only(bottom: 9.r),
                            width: 22.w,
                            height: 1.h,
                            color: focusedBorderColor,
                          ),
                        ],
                      ),
                      focusedPinTheme: defaultPinTheme.copyWith(
                        decoration: defaultPinTheme.decoration!.copyWith(
                          borderRadius: BorderRadius.circular(8.r),
                          border: Border.all(color: focusedBorderColor),
                        ),
                      ),
                      submittedPinTheme: defaultPinTheme.copyWith(
                        decoration: defaultPinTheme.decoration!.copyWith(
                          color: fillColor,
                          borderRadius: BorderRadius.circular(19.r),
                          border: Border.all(color: focusedBorderColor),
                        ),
                      ),
                      errorPinTheme: defaultPinTheme.copyBorderWith(
                        border: Border.all(color: Colors.redAccent),
                      ),
                    ),
                  ),
                ),
                ResendTimer(email: widget.email),
                BlocBuilder<VerifyOTPBloc, VerifyOTPState>(
                  builder: (context, state) {
                    return RoundedButton(
                        onPressed: () {
                          focusNode.unfocus();
                          // formKey.currentState!.validate();
                          // Check the state type
                          // Access the email property safely
                          BlocProvider.of<VerifyOTPBloc>(context).add(
                              VerifyOTPButtonPressedEvent(
                                  otp: otp, email: widget.email));
                        },
                        childWidget: Text(
                          'Verify',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.sp,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            letterSpacing: 0.72,
                          ),
                        ));
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
