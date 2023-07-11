import 'package:fancy_password_field/fancy_password_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:coordonate_app/features/auth/presentation/widgets/input_form.dart';
import 'package:coordonate_app/features/auth/presentation/widgets/rounded_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //TextControllers
  final emailController = TextEditingController();
  final passwordController = FancyPasswordController();
  //formkey
  final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    //Media Query
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    //page
    return Theme(
      data: Theme.of(context),
      child: Scaffold(
        body: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: Column(
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Log in',
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.onPrimary,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
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
                          SizedBox(
                            width: width,
                            child: FancyPasswordField(
                              passwordController: passwordController,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: height * 0.03,
                    ),
                    Center(
                      child: Column(
                        children: [
                          RoundedButton(
                            width: 1.w,
                            height: 1.h,
                            childWidget: Text(
                              'Continue',
                              style: TextStyle(
                                  fontSize: 23,
                                  color: Theme.of(context).colorScheme.surface),
                            ),
                            onPressed: () {
                              if (formkey.currentState!.validate()) {
                                //request login here
                              }
                            },
                          ),
                          SizedBox(
                            height: height * 0.02,
                          ),
                          RichText(
                            text: TextSpan(
                              text: 'Don\'t have an account?',
                              style: TextStyle(
                                color: Theme.of(context).colorScheme.onPrimary,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                  text: 'Sign up',
                                  style: TextStyle(
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                  ),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      // logic here
                                    },
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: height * 0.02,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
