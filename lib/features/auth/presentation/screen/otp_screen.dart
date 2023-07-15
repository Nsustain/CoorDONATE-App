import 'package:coordonate_app/features/auth/presentation/widgets/otp_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pinput/pinput.dart';

class OTPScreen extends StatefulWidget {
  const OTPScreen({super.key});

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context),
      child: Scaffold(
          body: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(35.0),
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
                      text: 'samyudharajesh3@gwmail.gwu.edu',
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
              const OTPInput()
            ],
          ),
        ),
      )),
    );
    ;
  }
}
