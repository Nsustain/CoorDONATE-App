import 'package:coordonate_app/dependency_injection.dart';
import 'package:coordonate_app/features/auth/presentation/bloc/login/login_bloc.dart';
import 'package:coordonate_app/features/auth/presentation/bloc/register/register_bloc.dart';
import 'package:coordonate_app/features/feed/presentation/bloc/feed/feed_bloc.dart';
import 'package:coordonate_app/router/main_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dependency_injection.dart' as di;

Future<void> main() async {
  // await dotenv.load(fileName: Enviroment.fileName);
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferences.getInstance();
  initPrefManager(prefs);
  di.serviceLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(443, 962),
        minTextAdapt: true,
        splitScreenMode: true,
        // rebuildFactor: (old, data) => old.size.width != data.size.width,
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
