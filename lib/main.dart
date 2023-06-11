import 'package:coordonate_app/core/utils/global/environment.dart';
import 'package:coordonate_app/features/auth/presentation/screen/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import './core/utils/constants/styles.dart';
import 'features/auth/presentation/screen/signup_page.dart';

Future<void> main() async {
  // await dotenv.load(fileName: Enviroment.fileName);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primaryColor: kPrimaryColor,
          colorScheme: const ColorScheme(
            brightness: Brightness.light,
            background: kBackgroundColor,
            primary: kPrimaryColor,
            onPrimary: kTextPrimaryColor,
            secondary: kSecondaryColor,
            onSecondary: kTextPrimaryColor,
            error: kDangerColor,
            onError: kPrimaryColor,
            onBackground: kPrimaryColor,
            surface: kWhiteColor,
            onSurface: kTextPrimaryColor,
          )),
      home: SignupPage(),
    );
  }
}
