import 'package:coordonate_app/features/auth/presentation/widgets/phone_number.dart';
import 'package:coordonate_app/features/auth/presentation/widgets/rounded_button.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:coordonate_app/features/auth/presentation/widgets/input_form.dart';

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
  final passwordController = TextEditingController();
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
                  height: height * 0.43,
                  width: width * 0.5,
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
                      'Sign up',
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
                          InputForm(
                            icon: const Icon(Icons.person),
                            inputboxplaceholder: 'Name',
                            width: width,
                            type: 'name',
                            textInputController: nameController,
                            height: height,
                          ),
                          // SizedBox(
                          //   height: height * 0.03,
                          // ),
                          PhoneNumber(
                              width: width, controller: phoneController),
                          InputForm(
                            icon: const Icon(Icons.password),
                            inputboxplaceholder: 'password',
                            width: width,
                            type: 'password',
                            textInputController: passwordController,
                            height: height,
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
                                color:
                                    Theme.of(context).colorScheme.onSecondary),
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
                                  color: Theme.of(context).colorScheme.primary,
                                ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    // logic here
                                  },
                              ),
                            ],
                          ),
                        )),
                    SizedBox(
                      height: height * 0.075,
                    ),
                    Center(
                      child: Column(
                        children: [
                          RoundedButton(
                              width: width,
                              height: height,
                              onPressed: () {
                                if (formkey.currentState!.validate()) {
                                  //request login here
                                }
                              }),
                          SizedBox(
                            height: height * 0.02,
                          ),
                          RichText(
                            text: TextSpan(
                              text: 'Already have an account?',
                              style: TextStyle(
                                  color:
                                      Theme.of(context).colorScheme.onPrimary),
                              children: <TextSpan>[
                                TextSpan(
                                    text: 'Login',
                                    style: TextStyle(
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                    ),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        // logic here
                                      })
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
