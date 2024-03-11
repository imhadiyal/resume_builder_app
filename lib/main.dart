import 'package:flutter/material.dart';
import 'package:resume_builder_app/pages/build_options/build_option/personal_info_page.dart';
import 'package:resume_builder_app/pages/build_options/build_option_page.dart';
import 'package:resume_builder_app/pages/home_page/home_page.dart';
import 'package:resume_builder_app/pages/splash_screen/splash_screen.dart';
import 'package:resume_builder_app/utils/routes_utils.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, routes: {
      MyRoutes.splashScreen: (context) => const SplashScreen(),
      MyRoutes.homePage: (context) => const HomePage(),
      MyRoutes.buildOptionPage: (context) => const BuildOptionPage(),
      MyRoutes.buildOptions[0]['route']: (context) => const PersonalInfoPage(),
    });
  }
}
