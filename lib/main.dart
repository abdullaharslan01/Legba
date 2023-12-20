import 'package:flutter/material.dart';
import 'package:legba/config/app_strings.dart';
import 'package:legba/pages/login_page.dart';
import 'package:legba/routes/app_router.dart';
import 'package:legba/styles/app_color.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
        title: AppStrings.appName,
        routerDelegate: AppRouter().router.routerDelegate,
        routeInformationProvider: AppRouter().router.routeInformationProvider,
        routeInformationParser: AppRouter().router.routeInformationParser,
        theme: ThemeData(
          brightness: Brightness.dark,
          fontFamily: "Urbanist",
          scaffoldBackgroundColor: AppColors.background,
        ),
        debugShowCheckedModeBanner: false);
  }
}
