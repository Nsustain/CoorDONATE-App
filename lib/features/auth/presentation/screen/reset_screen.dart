import 'package:coordonate_app/features/auth/presentation/widgets/input_form.dart';
import 'package:coordonate_app/features/auth/presentation/widgets/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class ResetScreen extends StatefulWidget {
  const ResetScreen({super.key});

  @override
  State<ResetScreen> createState() => _ResetScreenState();
}

class _ResetScreenState extends State<ResetScreen> {
  final passwordController = TextEditingController();
  bool _isPasswordVisible = false;
  bool _isConfirmPasswordVisible = false;

  void _togglePasswordVisibility() {
    setState(() {
      _isPasswordVisible = !_isPasswordVisible;
    });
  }

  void _toggleConfirmPasswordVisibility() {
    setState(() {
      _isConfirmPasswordVisible = !_isConfirmPasswordVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
        data: Theme.of(context),
        child: Scaffold(
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.all(32.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 70.h,
                    ),
                    Center(
                      child: SizedBox(
                        width: 300.w,
                        height: 300.h,
                        child: SvgPicture.asset(
                            'assets/images/auth/key-frame.svg'),
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 20.h),
                      child: Text(
                        'Reset\nPassword',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 36.sp,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          letterSpacing: -0.17,
                        ),
                      ),
                    ),
                    InputForm(
                        icon: const Icon(Icons.lock),
                        inputboxplaceholder: "New password",
                        type: "password",
                        textInputController: passwordController,
                        isVisible: _isPasswordVisible,
                        toggleVisibility: _togglePasswordVisibility),
                    InputForm(
                        icon: const Icon(Icons.lock),
                        inputboxplaceholder: "Confirm new password",
                        type: "password",
                        textInputController: passwordController,
                        isVisible: _isConfirmPasswordVisible,
                        toggleVisibility: _toggleConfirmPasswordVisibility),
                    Center(
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 60.h),
                        child: RoundedButton(
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
                        ),
                      ),
                    )
                  ]),
            ),
          ),
        ));
  }
}
