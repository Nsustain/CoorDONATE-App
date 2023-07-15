import 'package:coordonate_app/features/auth/presentation/widgets/input_form.dart';
import 'package:coordonate_app/features/auth/presentation/widgets/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    return Scaffold(
      body: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: Column(
          children: [
            SizedBox(height: 70.h),
            Center(
              child: SizedBox(
                width: 367.w,
                height: 367.h,
                child: SvgPicture.asset(
                    'assets/images/auth/forgot-password-lock.svg'),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 35.0),
                child: SizedBox(
                  width: 200.w,
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 40.sp,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      letterSpacing: -0.17,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            SizedBox(
              width: 364.w,
              height: 64.h,
              child: Text(
                'Don’t worry! It happens. Please enter the address associated with your account.',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.sp,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                  letterSpacing: -0.17,
                ),
              ),
            ),
            SizedBox(
              height: 50.h,
            ),
            InputForm(
                icon: const Icon(Icons.mail),
                inputboxplaceholder: "email",
                type: "email",
                textInputController: emailController),
            SizedBox(
              height: 20.h,
            ),
            RoundedButton(
              onPressed: () {},
              childWidget: Text(
                'Submit',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.sp,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.72,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
