import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LogoButton extends StatelessWidget {
  const LogoButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      iconSize: 64.w,
      onPressed: () {},
      icon: Image.asset(
        'assets/images/auth/coordonate-logo.png',
      ),
    );
  }
}
