import 'package:coordonate_app/core/common/bottom_navigation_bar.dart';
import 'package:coordonate_app/dependency_injection.dart';
import 'package:coordonate_app/features/auth/auth.dart';
import 'package:coordonate_app/features/auth/presentation/screen/login_page.dart';
import 'package:coordonate_app/features/feed/presentation/screen/create_post_page.dart';
import 'package:coordonate_app/features/feed/presentation/screen/feeds_page.dart';
import 'package:coordonate_app/router/routes.dart';
import 'package:coordonate_app/utils/constants/styles.dart';
import 'package:coordonate_app/utils/helper/helper.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MainRouter extends StatelessWidget {
  late final GoRouter _router;

  String? redirector(state) {
    return null;
  }

  MainRouter({super.key}) {
    final prefManger = sl<PrefManager>();
    final isLoggedIn = prefManger.isLoggedin;

    _router = GoRouter(
        // redirect: (context, state) {
        //   if (isLoggedIn) {
        //     return AppRoutes.CoorDonateBottomNavigationBar;
        //   } else {
        //     return AppRoutes.LoginPage;
        //   }
        // },
        initialLocation: isLoggedIn
            ? AppRoutes.CoorDonateBottomNavigationBar
            : AppRoutes.LoginPage,
        routes: <GoRoute>[
          GoRoute(
            path: AppRoutes.SignupPage,
            name: AppRoutes.SignupPage,
            pageBuilder: (context, state) => MaterialPage(
              child: SignupPage(),
            ),
          ),
          GoRoute(
            path: AppRoutes.Feed,
            name: AppRoutes.Feed,
            pageBuilder: (context, state) => MaterialPage(
              child: FeedsPage(),
            ),
          ),
          GoRoute(
            path: AppRoutes.CoorDonateBottomNavigationBar,
            name: AppRoutes.CoorDonateBottomNavigationBar,
            pageBuilder: (context, state) => MaterialPage(
              child: CoorDonateBottomNavigationBar(),
            ),
          ),
          GoRoute(
            path: AppRoutes.LoginPage,
            name: AppRoutes.LoginPage,
            pageBuilder: (context, state) => const MaterialPage(
              child: LoginPage(),
            ),
          ),
          GoRoute(
            path: AppRoutes.CreatePostPage,
            name: AppRoutes.CreatePostPage,
            pageBuilder: (context, state) => MaterialPage(
              child: CreatePostPage(prefManager: prefManger),
            ),
          ),
        ]);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      title: 'CoorDonate',
      debugShowCheckedModeBanner: false,
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
        ),
      ),
    );
  }
}
