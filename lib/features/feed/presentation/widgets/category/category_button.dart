import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryButton extends StatefulWidget {
  bool _isSelected = false;
  String buttonText;
  CategoryButton({super.key, required this.buttonText});

  @override
  State<CategoryButton> createState() => _CategoryButtonState();
}

class _CategoryButtonState extends State<CategoryButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        setState(() {
          widget._isSelected = !widget._isSelected;
        });
      },
      style: ElevatedButton.styleFrom(
        minimumSize: Size(20.w, 20.h),
        backgroundColor: widget._isSelected ? Colors.red : Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.h),
        ),
      ),
      child: Text(
        '$widget.buttonText',
        style: TextStyle(
          fontSize: 10.sp,
        ),
      ),
    );
  }
}
