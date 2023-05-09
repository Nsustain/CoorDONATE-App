import 'package:flutter/material.dart';
import '../../../../core/utils/constants/styles.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Wrap(runSpacing: 10, children: [
          Image.asset('assets/images/login/group-pana.png'),
          TextFormField(
            decoration: const InputDecoration(
                prefixIcon: Icon(Icons.mail), labelText: 'Email'),
          ),
          TextFormField(
            obscureText: true,
            decoration: const InputDecoration(
                prefixIcon: Icon(Icons.lock), labelText: 'Password'),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
                onPressed: () {}, child: const Text('Forgot Password?')),
          ),
          const Expanded(child: SizedBox()),
          ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  minimumSize: const Size.fromHeight(50),
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
              child: const Text("Login")),
          const Align(
            alignment: Alignment.center,
            child: Text('or'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              Icon(Icons.facebook_rounded),
              Icon(Icons.apple),
              Icon(Icons.facebook_outlined)
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Don't have an account?"),
              TextButton(onPressed: () {}, child: const Text("Sign up"))
            ],
          )
        ]),
      ),
    );
  }
}
