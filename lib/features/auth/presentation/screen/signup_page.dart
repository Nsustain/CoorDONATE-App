import 'package:coordonate_app/dependency_injection.dart';
import 'package:coordonate_app/features/auth/domain/usecases/post_register.dart';
import 'package:coordonate_app/features/auth/presentation/bloc/register/register_bloc.dart';
import 'package:coordonate_app/features/auth/presentation/bloc/register/register_event.dart';
import 'package:coordonate_app/features/auth/presentation/bloc/register/register_state.dart';
import 'package:coordonate_app/features/auth/presentation/screen/dummy_homepage.dart';
import 'package:coordonate_app/features/auth/presentation/widgets/phone_number.dart';
import 'package:coordonate_app/features/auth/presentation/widgets/rounded_button.dart';
import 'package:coordonate_app/utils/constants/styles.dart';
import 'package:coordonate_app/utils/helper/pref_manager.dart';
import 'package:fancy_password_field/fancy_password_field.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:coordonate_app/features/auth/presentation/widgets/input_form.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  //TextControllers
  final emailController = TextEditingController();
  final nameController = TextEditingController();
  final phoneController = TextEditingController();
  final passwordController = FancyPasswordController();
  //formkey
  final formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<RegisterBloc>(),
      child: MaterialApp(
        title: 'Signup Page',
        theme: Theme.of(context),
        home: Scaffold(
          body: buildSignupPage(context),
        ),
      ),
    );
  }

  Widget buildSignupPage(BuildContext context) {
    //Media Query
    double height = ScreenUtil().screenHeight;
    double width = ScreenUtil().screenWidth;
    //page
    return Theme(
      data: Theme.of(context),
      child: Scaffold(
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
                            size: width * 0.1,
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
                      height: height * 0.45,
                      width: width * 0.7,
                      child: SvgPicture.asset(
                        'assets/images/auth/headline_image_signup.svg',
                        semanticsLabel: 'My SVG Image',
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: width * 0.08,
                    ),
                    child: BlocListener<RegisterBloc, RegisterState>(
                      listener: (context, state) {
                        if (state is RegisterSuccessState) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomePage()));
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text('Successful')),
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
                          Text(
                            'Sign up',
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.onPrimary,
                              fontSize: 35.h,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Form(
                            key: formkey,
                            autovalidateMode: AutovalidateMode.always,
                            child: Column(
                              children: [
                                InputForm(
                                  icon: const Icon(Icons.email),
                                  inputboxplaceholder: 'Email',
                                  width: width,
                                  type: 'email',
                                  textInputController: emailController,
                                  height: height,
                                ),
                                InputForm(
                                  icon: const Icon(Icons.person),
                                  inputboxplaceholder: 'Name',
                                  width: width,
                                  type: 'name',
                                  textInputController: nameController,
                                  height: height,
                                ),
                                PhoneNumber(
                                    width: width, controller: phoneController),
                                SizedBox(
                                  width: 360.w,
                                  child: FancyPasswordField(
                                      passwordController: passwordController,
                                      scrollPadding:
                                          EdgeInsets.all(width * 0.2),
                                      onFieldSubmitted: (value) {
                                        (value) {
                                          if (value == null) {
                                            return 'Fill in the details';
                                          } else {
                                            return null;
                                          }
                                        };
                                      }),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: height * 0.03,
                          ),
                          Container(
                            constraints: BoxConstraints(maxWidth: 0.8 * width),
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
                                BlocBuilder<RegisterBloc, RegisterState>(
                                  builder: (context, state) {
                                    return RoundedButton(
                                      onPressed: () {
                                        if (formkey.currentState!.validate()) {
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
                                    );
                                  },
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                RichText(
                                  text: TextSpan(
                                    text: 'Already have an account?',
                                    style: TextStyle(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onPrimary),
                                    children: <TextSpan>[
                                      TextSpan(
                                          text: 'Login',
                                          style: TextStyle(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .primary,
                                          ),
                                          recognizer: TapGestureRecognizer()
                                            ..onTap = () {
                                              // Navigator.push(
                                              //     context,
                                              //     MaterialPageRoute(
                                              //         builder: ((context) =>
                                              //             LoginPage())));
                                              // logic here
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
