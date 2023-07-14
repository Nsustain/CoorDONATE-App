import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(children: [
        Positioned(
          top: 143.h,
          right: 54.w,
          width: 62.w,
          height: 57.h,
          child: SvgPicture.asset(
            'assets/images/auth/circles.svg',
            semanticsLabel: 'circles',
          ),
        ),
        Positioned(
          top: 243.h,
          left: 98.w,
          width: 62.w,
          height: 57.h,
          child: SvgPicture.asset(
            'assets/images/auth/circles.svg',
            semanticsLabel: 'circles',
          ),
        ),
        Positioned(
          top: 483.h,
          left: 36.w,
          width: 62.w,
          height: 57.h,
          child: SvgPicture.asset(
            'assets/images/auth/circles.svg',
            semanticsLabel: 'circles',
          ),
        ),
        Positioned(
          top: 483.h,
          right: 53.w,
          width: 62.w,
          height: 57.h,
          child: SvgPicture.asset(
            'assets/images/auth/circles.svg',
            semanticsLabel: 'circles',
          ),
        ),
        Positioned(
          top: 685.h,
          right: 21.w,
          width: 62.w,
          height: 57.h,
          child: SvgPicture.asset(
            'assets/images/auth/circles.svg',
            semanticsLabel: 'circles',
          ),
        ),
        Positioned(
          top: 830.h,
          left: 99.w,
          width: 62.w,
          height: 57.h,
          child: SvgPicture.asset(
            'assets/images/auth/circles.svg',
            semanticsLabel: 'circles',
          ),
        ),

        // logo
        Positioned(
          top: 308.h,
          left: 78.w,
          child: Column(
            children: [
              Center(
                child: SizedBox(
                  width: 158.w,
                  height: 158.h,
                  child: Image.asset(
                    'assets/images/auth/coordonate-logo.png',
                  ),
                ),
              ),
              SizedBox(
                height: 40.h,
              ),
              SizedBox(
                width: 292.w,
                height: 51.h,
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Coor',
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.secondary,
                          fontSize: 36.sp,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          letterSpacing: -0.17,
                        ),
                      ),
                      TextSpan(
                        text: 'Donate',
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontSize: 36.sp,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          letterSpacing: -0.17,
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
