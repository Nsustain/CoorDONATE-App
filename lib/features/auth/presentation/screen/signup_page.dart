import 'package:coordonate_app/features/auth/presentation/bloc/register/register_bloc.dart';
import 'package:coordonate_app/features/auth/presentation/bloc/register/register_event.dart';
import 'package:coordonate_app/features/auth/presentation/bloc/register/register_state.dart';
import 'package:coordonate_app/features/auth/presentation/screen/login_page.dart';
import 'package:coordonate_app/features/auth/presentation/widgets/phone_number.dart';
import 'package:coordonate_app/features/auth/presentation/widgets/rounded_button.dart';
import 'package:coordonate_app/router/routes.dart';
import 'package:coordonate_app/utils/constants/styles.dart';
import 'package:fancy_password_field/fancy_password_field.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:coordonate_app/features/auth/presentation/widgets/input_form.dart';
import 'package:go_router/go_router.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import '../../../../dependency_injection.dart' as di;

class SignupPage extends StatefulWidget {
  SignupPage({super.key});
  static final GlobalKey<FormState> _signupFormKey =
      GlobalKey<FormState>(debugLabel: 'signup key');

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  static final emailController = TextEditingController();
  static final nameController = TextEditingController();
  static final phoneController = TextEditingController();
  static final passwordController = FancyPasswordController();
  //TextControllers

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context),
      child: Scaffold(
        // resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: Stack(
            children: [
              Positioned.fill(
                child: BlocBuilder<RegisterBloc, RegisterState>(
                  builder: (context, state) {
                    if (state is RegisterLoadingState) {
                      return Container(
                        color: Colors.white,
                        child: Center(
                          child: LoadingAnimationWidget.flickr(
                            leftDotColor: const Color(0xFF1A1A3F),
                            rightDotColor: kPrimaryColor,
                            size: 40.h,
                          ),
                        ),
                      );
                    } else {
                      return Container();
                    }
                  },
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: SizedBox(
                      height: 350.h,
                      width: 400.w,
                      child: SvgPicture.asset(
                        'assets/images/auth/headline_image_signup.svg',
                        semanticsLabel: 'Signup SVG Image',
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 8.w,
                    ),
                    child: BlocListener<RegisterBloc, RegisterState>(
                      listener: (context, state) {
                        if (state is RegisterSuccessState) {
                          context.pushNamed(AppRoutes.Feed);
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Successful')),
                          );
                        } else if (state is RegisterFailureState) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text(state.error)),
                          );
                        }
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 18.w),
                            child: Text(
                              'Sign up',
                              style: TextStyle(
                                color: Theme.of(context).colorScheme.onPrimary,
                                fontSize: 35.h,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 18.w),
                            child: Form(
                              key: SignupPage._signupFormKey,
                              autovalidateMode: AutovalidateMode.disabled,
                              child: Column(
                                children: [
                                  InputForm(
                                    icon: const Icon(Icons.email),
                                    inputboxplaceholder: 'Email',
                                    type: 'email',
                                    textInputController: emailController,
                                  ),
                                  InputForm(
                                    icon: const Icon(Icons.person),
                                    inputboxplaceholder: 'Name',
                                    type: 'name',
                                    textInputController: nameController,
                                  ),
                                  PhoneNumber(controller: phoneController),
                                  FancyPasswordField(
                                      passwordController: passwordController,
                                      scrollPadding: EdgeInsets.all(20.w),
                                      onFieldSubmitted: (value) {
                                        (value) {
                                          if (value == null) {
                                            return 'Fill in the details';
                                          } else {
                                            return null;
                                          }
                                        };
                                      }),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 3.h,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 18.w),
                            child: RichText(
                              text: TextSpan(
                                text: 'By signing up, you agree to our ',
                                style: TextStyle(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onSecondary),
                                children: <TextSpan>[
                                  TextSpan(
                                    text: 'Terms of Service',
                                    style: const TextStyle(
                                      color: Colors.blue,
                                    ),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        // logic here
                                      },
                                  ),
                                  TextSpan(
                                    text: ' and ',
                                    style: TextStyle(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onSecondary),
                                  ),
                                  TextSpan(
                                    text: 'Privacy Policy',
                                    style: TextStyle(
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                    ),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        // logic here
                                      },
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 20.h),
                          Center(
                            child: Column(
                              children: [
                                RoundedButton(
                                  onPressed: () {
                                    if (SignupPage._signupFormKey.currentState!
                                        .validate()) {
                                      BlocProvider.of<RegisterBloc>(context)
                                          .add(
                                        RegisterButtonPressedEvent(
                                          email: emailController.text,
                                          password:
                                              passwordController.toString(),
                                          phoneNumber: phoneController.text,
                                          name: nameController.text,
                                        ),
                                      );
                                    }
                                  },
                                  childWidget: Text(
                                    'Continue',
                                    style: TextStyle(
                                        fontSize: 23,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .surface),
                                  ),
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                RichText(
                                  text: TextSpan(
                                    text: 'Already have an account? ',
                                    style: TextStyle(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onPrimary),
                                    children: <TextSpan>[
                                      TextSpan(
                                          text: 'Login',
                                          style: TextStyle(
                                            fontSize: 20.sp,
                                            color: Theme.of(context)
                                                .colorScheme
                                                .primary,
                                          ),
                                          recognizer: TapGestureRecognizer()
                                            ..onTap = () {
                                              context
                                                  .goNamed(AppRoutes.LoginPage);
                                            })
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 25.h,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
