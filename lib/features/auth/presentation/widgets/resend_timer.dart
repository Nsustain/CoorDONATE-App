import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ResendTimer extends StatefulWidget {
  const ResendTimer({super.key});

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
    return Center(
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
                child: TextButton(
                  onPressed: resendOtp,
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
                )),
          ]),
        ),
      ),
    );
  }
}
