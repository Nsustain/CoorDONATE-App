import 'package:coordonate_app/dependency_injection.dart';
import 'package:coordonate_app/features/auth/presentation/bloc/login/login_bloc.dart';
import 'package:coordonate_app/features/auth/presentation/bloc/login/login_event.dart';
import 'package:coordonate_app/features/auth/presentation/bloc/login/login_state.dart';
import 'package:coordonate_app/features/auth/presentation/screen/dummy_homepage.dart';
import 'package:fancy_password_field/fancy_password_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import '../../../../utils//constants/styles.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<LoginBloc>(),
      child: MaterialApp(
        title: 'Login Page',
        theme: Theme.of(context),
        home: Scaffold(
          body: buildLoginPage(context),
        ),
      ),
    );
  }
}

Widget buildLoginPage(BuildContext context) {
  //TextControllers
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  //formkey
  final _formkey = GlobalKey<FormState>();

  return Theme(
    data: Theme.of(context),
    child: Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {},
        ),
        title: const Text(
          "Welcome Back!",
          style: TextStyle(color: kTextPrimaryColor),
        ),
        centerTitle: true,
        backgroundColor: kBackgroundColor,
      ),
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
                          size: 50.w,
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
                // TODO: implement listener
                if (state is LoginSuccessState) {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Successful')),
                  );
                } else if (state is LoginFailureState) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text(state.error)),
                  );
                }
              },
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset('assets/images/login/group-pana.png'),
                      Form(
                          key: _formkey,
                          child: Column(children: [
                            TextFormField(
                              controller: emailController,
                              decoration: const InputDecoration(
                                  prefixIcon: Icon(Icons.mail),
                                  labelText: 'Email'),
                            ),
                            TextFormField(
                              controller: passwordController,
                              obscureText: true,
                              decoration: const InputDecoration(
                                  prefixIcon: Icon(Icons.lock),
                                  labelText: 'Password'),
                            ),
                          ])),
                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                            onPressed: () {},
                            child: const Text('Forgot Password?')),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      BlocBuilder<LoginBloc, LoginState>(
                        builder: (context, state) {
                          return ElevatedButton(
                              onPressed: () {
                                BlocProvider.of<LoginBloc>(context).add(
                                    LoginButtonPressedEvent(
                                        email: emailController.text,
                                        password: passwordController.text));
                              },
                              style: ElevatedButton.styleFrom(
                                  minimumSize: const Size.fromHeight(50),
                                  foregroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10))),
                              child: const Text("Login"));
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
                              onPressed: () {}, child: const Text("Sign up"))
                        ],
                      )
                    ]),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
