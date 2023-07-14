import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RoundedButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Widget childWidget;
  final Color? bgColor;
  const RoundedButton({
    Key? key,
    required this.onPressed,
    required this.childWidget,
    this.bgColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
            bgColor ?? Theme.of(context).colorScheme.primary,
          ),
          minimumSize: MaterialStateProperty.all(
            Size(360.w, 60.h),
          ),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          ),
        ),
        onPressed: onPressed,
        child: childWidget);
  }
}
