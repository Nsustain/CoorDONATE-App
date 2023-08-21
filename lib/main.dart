import 'package:coordonate_app/dependency_injection.dart';
import 'package:coordonate_app/features/auth/presentation/bloc/login/login_bloc.dart';
import 'package:coordonate_app/features/auth/presentation/bloc/register/register_bloc.dart';
import 'package:coordonate_app/features/auth/presentation/screen/Splash-screen.dart';
import 'package:coordonate_app/features/auth/presentation/screen/onboarding-1.dart';
import 'package:coordonate_app/features/feed/presentation/bloc/feed/feed_bloc.dart';
import 'package:coordonate_app/features/feed/presentation/screen/feeds_page.dart';
import 'package:coordonate_app/router/main_router.dart';
import 'package:coordonate_app/utils/helper/helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'features/auth/presentation/screen/onboarding.dart';
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
          return MultiBlocProvider(providers: [
            BlocProvider<RegisterBloc>(
              create: (context) => di.sl<RegisterBloc>(),
            ),
            BlocProvider<LoginBloc>(
              create: (context) => di.sl<LoginBloc>(),
            ),
            BlocProvider<FeedBloc>(
              create: (context) => di.sl<FeedBloc>(),
            ),
          ], child: MainRouter());
        });
  }
}

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key});

//   @override
//   Widget build(BuildContext context) {
//     return ScreenUtilInit(
//         designSize: const Size(443, 962),
//         minTextAdapt: true,
//         splitScreenMode: true,
//         builder: (context, child) {
//           return MainRouter();
//         });
//   }
// }
