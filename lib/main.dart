import 'package:coordonate_app/dependency_injection.dart';
import 'package:coordonate_app/features/auth/presentation/bloc/login/login_bloc.dart';
import 'package:coordonate_app/features/auth/presentation/bloc/register/register_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'utils/constants/styles.dart';
import 'features/auth/presentation/screen/signup_page.dart';
import 'dependency_injection.dart' as di;

Future<void> main() async {
  // await dotenv.load(fileName: Enviroment.fileName);
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferences.getInstance();
  initPrefManager(prefs);
  di.serviceLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(443, 962),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
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
            home: const SignupPage(),
          );
        });
  }
}
