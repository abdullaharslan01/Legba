import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:legba/pages/edit_profi_page.dart';
import 'package:legba/pages/main_page.dart';
import 'package:legba/pages/home_page.dart';
import 'package:legba/pages/login_page.dart';
import 'package:legba/pages/near_by_page.dart';
import 'package:legba/routes/router_names.dart';

class AppRouter {
  static final GoRouter _router =
      GoRouter(initialLocation: RouterHelper.loginPage, routes: [
    GoRoute(
      path: RouterHelper.loginPage,
      builder: (context, state) => const LoginPage(),
    ),
    GoRoute(
      path: RouterHelper.mainPage,
      pageBuilder: (context, state) => CustomTransitionPage<void>(
        key: state.pageKey,
        child: MainPage(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) =>
            FadeTransition(opacity: animation, child: child),
      ),
    ),
    GoRoute(
      path: RouterHelper.homePage,
      builder: (context, state) => HomePage(),
    ),
    GoRoute(
      path: RouterHelper.editProfilePage,
      builder: (context, state) => EditProfilePage(),
    ),
    GoRoute(
      path: RouterHelper.nearByPages,
      builder: (context, state) => NearbyPage(),
    )
  ]);

  GoRouter get router => _router;
}
