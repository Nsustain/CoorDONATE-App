import 'package:coordonate_app/dependency_injection.dart';
import 'package:coordonate_app/features/auth/auth.dart';
import 'package:coordonate_app/features/auth/domain/repositories/repositories.dart';
import 'package:coordonate_app/features/auth/domain/usecases/forgot_password.dart';
import 'package:coordonate_app/features/auth/presentation/bloc/otp/opt_state.dart';
import 'package:coordonate_app/features/auth/presentation/bloc/otp/otp_bloc.dart';
import 'package:coordonate_app/features/auth/presentation/bloc/otp/otp_event.dart';
import 'package:coordonate_app/features/auth/presentation/widgets/input_form.dart';
import 'package:coordonate_app/features/auth/presentation/widgets/rounded_button.dart';
import 'package:coordonate_app/router/routes.dart';
import 'package:coordonate_app/utils/constants/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({super.key});

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  final emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => sl<OTPBloc>(),
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: Stack(
            children: [
              Positioned.fill(
                  child: BlocBuilder<OTPBloc, OTPState>(builder: (context, state) {
                       if (state is OTPLoadingState){
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
              BlocListener<OTPBloc, OTPState>(
              listener: (context, state) {
                if (state is OTPSuccessState) {
                  context.goNamed(AppRoutes.OTPPage, extra: {
                    "email": emailController.text
                  });
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Successful')));
                } else if(state is OTPFailureState) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text(state.error.toString())),
                  );
                } 
              },
              child: Column(
                children: [
                  SizedBox(height: 70.h),
                  Center(
                    child: SizedBox(
                      width: 367.w,
                      height: 367.h,
                      child: SvgPicture.asset(
                          'assets/images/auth/forgot-password-lock.svg'),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 35.0),
                      child: SizedBox(
                        width: 200.w,
                        child: Text(
                          'Forgot Password?',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 40.sp,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                            letterSpacing: -0.17,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  SizedBox(
                    width: 364.w,
                    height: 64.h,
                    child: Text(
                      'Don’t worry! It happens. Please enter the address associated with your account.',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.sp,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        letterSpacing: -0.17,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50.h,
                  ),
                  InputForm(
                      icon: const Icon(Icons.mail),
                      inputboxplaceholder: "email",
                      type: "email",
                      textInputController: emailController),
                  BlocBuilder<OTPBloc, OTPState>(
                    builder: (context, state) {
                      return RoundedButton(
                        onPressed: () {
                          final value = emailController.text;
            
                          if (value.isEmpty ||
                              !RegExp(r"^[a-z👉 A-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                  .hasMatch(value)) {
                            SnackBar(
                                content: Text('Please Enter your email'));
                          } else {
                            BlocProvider.of<OTPBloc>(context).add(
                              ForgotPasswordButtonPressedEvent(
                                  email: emailController.text),
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
                  SizedBox(
                    height: 20.h,
                  )
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
