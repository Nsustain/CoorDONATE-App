import 'dart:async';

import 'package:coordonate_app/dependency_injection.dart';
import 'package:coordonate_app/features/auth/presentation/bloc/otp/opt_state.dart';
import 'package:coordonate_app/features/auth/presentation/bloc/otp/otp_bloc.dart';
import 'package:coordonate_app/features/auth/presentation/bloc/otp/otp_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ResendTimer extends StatefulWidget {
  const ResendTimer({
    required this.email,
    super.key});

  final String email;
  @override
  State<ResendTimer> createState() => _ResendTimerState();
}

class _ResendTimerState extends State<ResendTimer> {
  late Timer _timer;
  int _countdownSeconds = 60;
  bool _showResendButton = true;

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (_) {
      setState(() {
        if (_countdownSeconds > 0) {
          _countdownSeconds--;
        } else {
          _showResendButton = true;
          _timer.cancel(); // Cancel the timer after it ends
        }
      });
    });
  }

  void resendOtp() {
    // TODO: Implement resend OTP functionality
    setState(() {
      _countdownSeconds = 60;
      _showResendButton = false;
    });
    startTimer(); // Start the timer again after resending OTP
  }

  @override
  void dispose() {
    _timer.cancel(); // Cancel the timer to avoid memory leaks
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<OTPBloc>(),
      child: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 32.h),
          child: SizedBox(
            height: 50.h,
            child: Row(children: [
              Text(
                'Resend authorization code: ',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18.sp,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                  letterSpacing: -0.17,
                ),
              ),
              Visibility(
                  visible: _showResendButton,
                  replacement: Text(
                    '$_countdownSeconds sec',
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontSize: 17.sp,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      letterSpacing: -0.17,
                    ),
                  ),
                  child: BlocBuilder<OTPBloc, OTPState>(
                    builder: (context, state) {
                      return TextButton(
                        onPressed: () {
                          BlocProvider.of<OTPBloc>(context).add(
                            ForgotPasswordButtonPressedEvent(email: widget.email)
                          );
                        },
                        child: Text(
                          'Resend',
                          style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontSize: 15.sp,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            letterSpacing: -0.17,
                          ),
                        ),
                      );
                    },
                  )),
            ]),
          ),
        ),
      ),
    );
  }
}
