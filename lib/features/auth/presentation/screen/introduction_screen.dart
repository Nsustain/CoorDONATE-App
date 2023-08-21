import 'package:coordonate_app/features/auth/presentation/screen/onboarding-1.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class IntroductionSplashScreen extends StatefulWidget {
  IntroductionSplashScreen({super.key});

  @override
  State<IntroductionSplashScreen> createState() =>
      _IntroductionSplashScreenState();
}

class _IntroductionSplashScreenState extends State<IntroductionSplashScreen> {
  final introKey = GlobalKey<IntroductionScreenState>();
  final List<PageViewModel> listPageViewModel = [];
  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      key: introKey,
      allowImplicitScrolling: true,
      infiniteAutoScroll: true,
      autoScrollDuration: 3000,
      pages: [],
    );
  }
}
