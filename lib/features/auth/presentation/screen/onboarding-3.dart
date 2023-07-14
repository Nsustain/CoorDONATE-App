import 'package:coordonate_app/features/auth/presentation/widgets/rounded_button.dart';
import 'package:coordonate_app/utils/constants/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Onboarding3 extends StatelessWidget {
  const Onboarding3({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 50.h,
              ),
              // coordonate text
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'Coor',
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.secondary,
                        fontSize: 29.sp,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    TextSpan(
                      text: 'Donate',
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontSize: 29.sp,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 20.h,
              ),
              Center(
                child: SizedBox(
                  width: 380.w,
                  height: 380.h,
                  child: SvgPicture.asset(
                    'assets/images/auth/onboarding/Online-world-cuate.svg',
                    semanticsLabel: 'Online world',
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              SizedBox(
                width: 400.w,
                child: Text(
                  'Share Your Thoughts',
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
                height: 10.h,
              ),
              SizedBox(
                width: 283.w,
                child: Text(
                  'Post your thoughts, engage with your local communities, and \nexplore ',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: kGrayColor,
                    fontSize: 17.sp,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),

              SizedBox(
                height: 80.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
