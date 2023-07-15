import 'package:coordonate_app/features/auth/presentation/screen/onboarding-1.dart';
import 'package:coordonate_app/features/auth/presentation/screen/onboarding-2.dart';
import 'package:coordonate_app/features/auth/presentation/screen/onboarding-3.dart';
import 'package:coordonate_app/features/auth/presentation/screen/welcome-screen.dart';
import 'package:coordonate_app/utils/constants/styles.dart';
import 'package:cupertino_onboarding/cupertino_onboarding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'dummy_homepage.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoOnboarding(
      bottomButtonColor: kPrimaryColor,
      onPressedOnLastPage: () => {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const WelcomeScreen()))
      },
      widgetAboveBottomButton: SizedBox(height: 20.h),
      bottomButtonChild: const Text("Next"),
      pages: const [Onboarding1(), Onboarding2(), Onboarding3()],
    );
  }
}
