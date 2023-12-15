import 'package:coordonate_app/dependency_injection.dart';
import 'package:coordonate_app/features/auth/presentation/bloc/otp/opt_state.dart';
import 'package:coordonate_app/features/auth/presentation/bloc/otp/otp_bloc.dart';
import 'package:coordonate_app/features/auth/presentation/bloc/otp/otp_event.dart';
import 'package:coordonate_app/features/auth/presentation/widgets/input_form.dart';
import 'package:coordonate_app/features/auth/presentation/widgets/rounded_button.dart';
import 'package:coordonate_app/router/routes.dart';
import 'package:coordonate_app/utils/constants/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class ResetScreen extends StatefulWidget {
  const ResetScreen({required this.email, super.key});

  final String email;
  @override
  State<ResetScreen> createState() => _ResetScreenState();
}

class _ResetScreenState extends State<ResetScreen> {
  final passwordController = TextEditingController();
  final passwordConfirmController = TextEditingController();
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
          body: BlocProvider(
            create: (context) => sl<ResetPasswordBloc>(),
            child: SingleChildScrollView(
              physics: const AlwaysScrollableScrollPhysics(),
              child: Stack(
                children: [
                  Positioned.fill(
                    child: BlocBuilder<ResetPasswordBloc, ResetPasswordState>(
                        builder: (context, state) {
                      if (state is ResetPasswordLoadingState) {
                        return Container(
                          color: Colors.white,
                          child: Center(
                            child: LoadingAnimationWidget.flickr(
                              leftDotColor: const Color(0xFF1A1A3F),
                              rightDotColor: kPrimaryColor,
                              size: 50,
                            ),
                          ),
                        );
                      } else {
                        return Container();
                      }
                    }),
                  ),
                  BlocListener<ResetPasswordBloc, ResetPasswordState>(
                    listener: (context, state) {
                      if (state is ResetPasswordSuccessState) {
                        context.goNamed(AppRoutes.LoginPage);
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Successful')));
                      } else if (state is ResetPasswordFailureState) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text(state.error.toString())),
                        );
                      }
                    },
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
                                textInputController: passwordConfirmController,
                                isVisible: _isConfirmPasswordVisible,
                                toggleVisibility:
                                    _toggleConfirmPasswordVisibility),
                            Center(
                              child: Padding(
                                padding: EdgeInsets.symmetric(vertical: 60.h),
                                child: BlocBuilder<ResetPasswordBloc, ResetPasswordState>(
                                  builder: (context, state) {
                                    return RoundedButton(
                                      onPressed: () {
                                        if(passwordController.text == passwordConfirmController.text){
                                            BlocProvider.of<ResetPasswordBloc>(
                                                context)
                                            .add(
                                                ResetPasswordButtonPressedEvent(
                                                    email: widget.email,
                                                    newPassword: 
                                                        passwordController
                                                        .text));
                                        }else{
                                          ScaffoldMessenger.of(context).showSnackBar(
                                              const SnackBar(content: Text("Passwords don't match!")),
                                            );
                                        }
                                      },
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
                                    );
                                  },
                                ),
                              ),
                            )
                          ]),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
