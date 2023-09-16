import 'package:coordonate_app/core/common/bottom_navigation_bar.dart';
import 'package:coordonate_app/core/common/scaffold_with_nested_navigation.dart';
import 'package:coordonate_app/dependency_injection.dart' as di;
import 'package:coordonate_app/features/auth/auth.dart';
import 'package:coordonate_app/features/auth/presentation/screen/login_page.dart';
import 'package:coordonate_app/features/feed/presentation/screen/create_post_page.dart';
import 'package:coordonate_app/features/feed/presentation/screen/feeds_page.dart';
import 'package:coordonate_app/features/feed/presentation/screen/notifications_page.dart';
import 'package:coordonate_app/features/feed/presentation/screen/profile_page.dart';
import 'package:coordonate_app/features/feed/presentation/screen/search_page.dart';
import 'package:coordonate_app/router/routes.dart';
import 'package:coordonate_app/utils/constants/styles.dart';
import 'package:coordonate_app/utils/helper/helper.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MainRouter extends StatefulWidget {
  final prefManager = di.sl<PrefManager>();
  MainRouter({super.key});

  @override
  State<MainRouter> createState() => _MainRouterState();
}

class _MainRouterState extends State<MainRouter> {
  late final GoRouter router;
  final _rootNavigatorKey = GlobalKey<NavigatorState>();
  final _shellNavigatorKeyFeed = GlobalKey<NavigatorState>();
  final _shellNavigatorKeySearch = GlobalKey<NavigatorState>();
  final _shellNavigatorKeyPost = GlobalKey<NavigatorState>();
  final _shellNavigatorKeyNotification = GlobalKey<NavigatorState>();
  final _shellNavigatorKeyProfile = GlobalKey<NavigatorState>();
  @override
  void initState() {
    super.initState();
    router = GoRouter(
        navigatorKey: _rootNavigatorKey,
        debugLogDiagnostics: true,
        initialLocation: widget.prefManager.isLoggedin
            ? AppRoutes.CreatePostPage
            : AppRoutes.LoginPage,
        routes: [
          StatefulShellRoute.indexedStack(
            builder: (context, state, navigationShell) {
              return ScaffoldWithNestedNavigation(
                  navigationShell: navigationShell);
            },
            branches: [
              StatefulShellBranch(
                navigatorKey: _shellNavigatorKeyFeed,
                routes: [
                  GoRoute(
                    path: AppRoutes.Feed,
                    name: AppRoutes.Feed,
                    pageBuilder: (context, state) =>
                        NoTransitionPage(child: FeedsPage()),
                  )
                ],
              ),
              StatefulShellBranch(
                  navigatorKey: _shellNavigatorKeySearch,
                  routes: [
                    GoRoute(
                      path: AppRoutes.SearchPage,
                      name: AppRoutes.SearchPage,
                      pageBuilder: (context, state) =>
                          NoTransitionPage(child: SearchPage()),
                    )
                  ]),
              StatefulShellBranch(
                  navigatorKey: _shellNavigatorKeyPost,
                  routes: [
                    GoRoute(
                        path: AppRoutes.CreatePostPage,
                        name: AppRoutes.CreatePostPage,
                        pageBuilder: ((context, state) => NoTransitionPage(
                              child: CreatePostPage(
                                  prefManager: widget.prefManager),
                            ))),
                  ]),
              StatefulShellBranch(
                  navigatorKey: _shellNavigatorKeyNotification,
                  routes: [
                    GoRoute(
                      path: AppRoutes.NotificationsPage,
                      name: AppRoutes.NotificationsPage,
                      pageBuilder: (context, state) =>
                          NoTransitionPage(child: NotificationsPage()),
                    )
                  ]),
              StatefulShellBranch(
                  navigatorKey: _shellNavigatorKeyProfile,
                  routes: [
                    GoRoute(
                      path: AppRoutes.ProfilePage,
                      name: AppRoutes.ProfilePage,
                      pageBuilder: (context, state) =>
                          NoTransitionPage(child: ProfilePage()),
                    )
                  ])
            ],
          ),
          GoRoute(
            path: AppRoutes.SignupPage,
            name: AppRoutes.SignupPage,
            builder: (context, state) => SignupPage(),
          ),
          GoRoute(
            path: AppRoutes.LoginPage,
            name: AppRoutes.LoginPage,
            builder: (context, state) => LoginPage(),
          ),
        ],
        errorBuilder: (context, state) => const Scaffold(
              body: Center(
                child: Text('No page found'),
              ),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
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
