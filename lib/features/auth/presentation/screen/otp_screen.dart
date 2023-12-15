import 'package:coordonate_app/dependency_injection.dart';
import 'package:coordonate_app/features/auth/presentation/bloc/otp/opt_state.dart';
import 'package:coordonate_app/features/auth/presentation/bloc/otp/otp_bloc.dart';
import 'package:coordonate_app/features/auth/presentation/widgets/otp_input.dart';
import 'package:coordonate_app/router/routes.dart';
import 'package:coordonate_app/utils/constants/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:pinput/pinput.dart';

class OTPScreen extends StatefulWidget {
  const OTPScreen({required this.email, super.key});

  final String email;
  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context),
      child: Scaffold(
          body: BlocProvider(
            create: (context) => sl<VerifyOTPBloc>(),
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: Stack(
            children: [
              Positioned.fill(
                child: BlocBuilder<VerifyOTPBloc, VerifyOTPState>(builder: ((context, state) {
                    if (state is VerifyOTPLoadingState){
                      return Container(
                            color: Colors.white,
                            child: Center(
                              child: LoadingAnimationWidget.flickr(
                                leftDotColor: const Color(0xFF1A1A3F),
                                rightDotColor: kPrimaryColor,
                                size: 50,
                              ),
                            ),
                          );
                        } else {
                          return Container();
                        }
                } ),) 
                ),
              BlocListener<VerifyOTPBloc, VerifyOTPState>(
                listener: (context, state) {
                  if(state is VerifyOTPSuccessState){
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Successful')));
                    context.goNamed(AppRoutes.ResetPassword, extra: {
                      'email': widget.email
                    });
                  }else if(state is VerifyOTPFailureState){
                      ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text(state.error.toString())),
                  );
                  }
                },

              child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 100.h,
                  ),
                  Center(
                    child: SizedBox(
                      width: 250.w,
                      height: 260.h,
                      child: Image.asset(
                        'assets/images/auth/otp-illustration.png',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 80.h,
                  ),
            
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Enter OTP',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 36.sp,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        letterSpacing: -0.17,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
            
                  // text rich
            
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: ' A 4 digit code has been sent to your email\n',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 17.sp,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            letterSpacing: -0.17,
                          ),
                        ),
                        TextSpan(
                          text: widget.email,
                          style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontSize: 17.sp,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            letterSpacing: -0.17,
                          ),
                        ),
                      ],
                    ),
                  ),
                  OTPInput(email: widget.email)
                ],
              ),
            ),
            ),
            ],
          ),
        ),
      )),
    );
    ;
  }
}
