import 'package:coordonate_app/features/auth/auth.dart';
import 'package:coordonate_app/features/auth/presentation/screen/dummy_homepage.dart';
import 'package:coordonate_app/features/auth/presentation/widgets/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: Column(
            children: [
              SizedBox(
                height: 120.h,
              ),
              Center(
                child: SizedBox(
                  width: 415.w,
                  height: 380.h,
                  child: SvgPicture.asset(
                    'assets/images/auth/meeting.svg',
                    semanticsLabel: 'Meeting',
                  ),
                ),
              ),
              SizedBox(
                height: 40.h,
              ),
              SizedBox(
                width: 364.w,
                child: Text(
                  'Welcome to CoorDonate',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 29.sp,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(
                height: 40.h,
              ),
              SizedBox(
                width: 200.w,
                child: Text(
                  'Communication that creates transformation',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.sp,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w300,
                    letterSpacing: 0.64,
                  ),
                ),
              ),
              SizedBox(
                height: 60.h,
              ),
              RoundedButton(
                childWidget: Text(
                  'Login',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.sp,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    letterSpacing: 0.72,
                  ),
                ),
                onPressed: () => {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomePage(),
                      ))
                },
              ),
              SizedBox(
                height: 20.h,
              ),
              RoundedButton(
                onPressed: () => {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SignupPage(),
                      ))
                },
                childWidget: Text(
                  'Sign Up',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.sp,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    letterSpacing: 0.72,
                  ),
                ),
                bgColor: Colors.white,
              )
            ],
          ),
        ),
      ),
    );
  }
}
