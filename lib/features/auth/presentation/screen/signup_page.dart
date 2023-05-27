import 'package:coordonate_app/features/auth/presentation/widgets/rounded_button.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:coordonate_app/features/auth/presentation/widgets/input_form.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
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
                    InputForm(
                      icon: const Icon(Icons.email),
                      inputboxplaceholder: 'Email',
                      width: width,
                      type: 'email',
                    ),
                    InputForm(
                      icon: const Icon(Icons.person),
                      inputboxplaceholder: 'Name',
                      width: width,
                      type: 'name',
                    ),
                    InputForm(
                      icon: const Icon(Icons.phone),
                      inputboxplaceholder: 'Phone Number',
                      width: width,
                      type: 'phone',
                    ),
                    SizedBox(
                      height: height * 0.02,
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
                      height: height * 0.07,
                    ),
                    Center(
                      child: Column(
                        children: [
                          RoundedButton(width: width, height: height),
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
                          )
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
