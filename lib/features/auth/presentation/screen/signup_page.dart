import 'package:coordonate_app/dependency_injection.dart';
import 'package:coordonate_app/features/auth/auth.dart';
import 'package:coordonate_app/features/auth/domain/usecases/post_register.dart';
import 'package:coordonate_app/features/auth/presentation/bloc/register/register_bloc.dart';
import 'package:coordonate_app/features/auth/presentation/bloc/register/register_event.dart';
import 'package:coordonate_app/features/auth/presentation/bloc/register/register_state.dart';
import 'package:coordonate_app/features/auth/presentation/screen/dummy_homepage.dart';
import 'package:coordonate_app/features/auth/presentation/screen/login_page.dart';
import 'package:coordonate_app/features/auth/presentation/widgets/phone_number.dart';
import 'package:coordonate_app/features/auth/presentation/widgets/rounded_button.dart';
import 'package:coordonate_app/features/feed/presentation/screen/feeds_page.dart';
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

class SignupPage extends StatefulWidget {
  static final formkey = GlobalKey<FormState>();
  static final emailController = TextEditingController();
  static final nameController = TextEditingController();
  static final phoneController = TextEditingController();
  static final passwordController = FancyPasswordController();

  SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  //TextControllers
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Theme(
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
                          print("-------------------Sucess-------------------");
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => FeedsPage())));
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
                              key: SignupPage.formkey,
                              autovalidateMode: AutovalidateMode.disabled,
                              child: Column(
                                children: [
                                  InputForm(
                                    icon: const Icon(Icons.email),
                                    inputboxplaceholder: 'Email',
                                    type: 'email',
                                    textInputController:
                                        SignupPage.emailController,
                                  ),
                                  InputForm(
                                    icon: const Icon(Icons.person),
                                    inputboxplaceholder: 'Name',
                                    type: 'name',
                                    textInputController:
                                        SignupPage.nameController,
                                  ),
                                  PhoneNumber(
                                      controller: SignupPage.phoneController),
                                  FancyPasswordField(
                                      passwordController:
                                          SignupPage.passwordController,
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
                                    if (SignupPage.formkey.currentState!
                                        .validate()) {
                                      BlocProvider.of<RegisterBloc>(context)
                                          .add(
                                        RegisterButtonPressedEvent(
                                          email:
                                              SignupPage.emailController.text,
                                          password: SignupPage
                                              .passwordController
                                              .toString(),
                                          phoneNumber:
                                              SignupPage.phoneController.text,
                                          name: SignupPage.nameController.text,
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
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: ((context) =>
                                                          LoginPage())));
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
    ));
  }

  @override
  void dispose() {
    super.dispose();
  }
}
