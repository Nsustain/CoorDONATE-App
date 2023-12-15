import 'package:coordonate_app/dependency_injection.dart';
import 'package:coordonate_app/features/auth/auth.dart';
import 'package:coordonate_app/features/auth/presentation/bloc/login/login_bloc.dart';
import 'package:coordonate_app/features/auth/presentation/bloc/login/login_event.dart';
import 'package:coordonate_app/features/auth/presentation/bloc/login/login_state.dart';
import 'package:coordonate_app/features/auth/presentation/screen/dummy_homepage.dart';
import 'package:coordonate_app/features/auth/presentation/widgets/input_form.dart';
import 'package:coordonate_app/features/auth/presentation/widgets/rounded_button.dart';
import 'package:coordonate_app/features/feed/presentation/screen/feeds_page.dart';
import 'package:coordonate_app/router/routes.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import '../../../../utils//constants/styles.dart';

class LoginPage extends StatefulWidget {
  //TextControllers
  static final emailController = TextEditingController();
  static final passwordController = TextEditingController();

  //formkey
  static final GlobalKey<FormState> _loginFormKey =
      GlobalKey<FormState>(debugLabel: 'login key');

  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context),
      child: Scaffold(
        body: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: Stack(
            children: [
              Positioned.fill(
                child: BlocBuilder<LoginBloc, LoginState>(
                  builder: (context, state) {
                    if (state is LoginLoadingState) {
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
                  },
                ),
              ),
              BlocListener<LoginBloc, LoginState>(
                listener: (context, state) {
                  if (state is LoginSuccessState) {
                    context.goNamed(AppRoutes.Feed);
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Successful')),
                    );
                  } else if (state is LoginFailureState) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text(state.error)),
                    );
                  }
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Padding(
                    padding: EdgeInsets.only(top: 30),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "Welcome Back!",
                            style: TextStyle(
                                color: kTextPrimaryColor, fontSize: 25),
                          ),
                          Image.asset(
                            'assets/images/login/group-pana.png',
                            height: 350,
                            width: 400,
                          ),
                          Form(
                              key: LoginPage._loginFormKey,
                              child: Column(children: [
                                InputForm(
                                    icon: Icon(Icons.mail),
                                    inputboxplaceholder: 'Email',
                                    type: 'email',
                                    textInputController:
                                        LoginPage.emailController),
                                InputForm(
                                    icon: Icon(Icons.lock),
                                    inputboxplaceholder: "Password",
                                    type: "password",
                                    textInputController:
                                        LoginPage.passwordController),
                              ])),
                          Align(
                            alignment: Alignment.centerRight,
                            child: TextButton(
                                onPressed: () {
                                  context.goNamed(AppRoutes.ForgotPasswordPage);
                                },
                                child: const Text('Forgot Password?')),
                          ),
                          SizedBox(
                            height: 50,
                          ),
                          BlocBuilder<LoginBloc, LoginState>(
                            builder: (context, state) {
                              return RoundedButton(
                                  onPressed: () {
                                    if (LoginPage._loginFormKey.currentState!
                                        .validate()) {
                                      BlocProvider.of<LoginBloc>(context).add(
                                          LoginButtonPressedEvent(
                                              email: LoginPage
                                                  .emailController.text,
                                              password: LoginPage
                                                  .passwordController.text));
                                    }
                                  },
                                  childWidget: Text(
                                    "Login",
                                    style: TextStyle(
                                        fontSize: 23,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .surface),
                                  ));
                            },
                          ),
                          const Align(
                            alignment: Alignment.center,
                            child: Text('or'),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.blue,
                                      width: 1.0,
                                    ),
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(5.0))),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16.0, vertical: 4.0),
                                  child: SvgPicture.asset(
                                    'assets/images/login/icons8-meta.svg',
                                    semanticsLabel: 'Meta svg',
                                    width: 25,
                                    height: 25,
                                  ),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.blue,
                                      width: 1.0,
                                    ),
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(5.0))),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16.0, vertical: 4.0),
                                  child: SvgPicture.asset(
                                    'assets/images/login/icons8-apple.svg',
                                    semanticsLabel: 'Apple svg',
                                    width: 25,
                                    height: 25,
                                  ),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.blue,
                                      width: 1.0,
                                    ),
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(5.0))),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16.0, vertical: 4.0),
                                  child: SvgPicture.asset(
                                    'assets/images/login/icons8-google.svg',
                                    width: 25,
                                    height: 25,
                                    semanticsLabel: 'Google svg',
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text("Don't have an account?"),
                              TextButton(
                                  onPressed: () {
                                    context.goNamed(AppRoutes.SignupPage);
                                  },
                                  child: const Text("Sign up"))
                            ],
                          )
                        ]),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
