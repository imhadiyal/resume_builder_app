import 'package:flutter/cupertino.dart';
import 'package:resume_builder_app/pages/build_options/build_option/about_page.dart';
import 'package:resume_builder_app/pages/build_options/build_option/achievement_page.dart';
import 'package:resume_builder_app/pages/build_options/build_option/education.dart';
import 'package:resume_builder_app/pages/build_options/build_option/experience.dart';
import 'package:resume_builder_app/pages/build_options/build_option/hobbie_page.dart';
import 'package:resume_builder_app/pages/build_options/build_option/projects.dart';
import 'package:resume_builder_app/pages/pdf_page.dart';
import 'package:resume_builder_app/utils/routes_utils.dart';

import '../pages/build_options/build_option/certified_page.dart';
import '../pages/build_options/build_option/personal_info_page.dart';
import '../pages/build_options/build_option/technical_skills.dart';
import '../pages/build_options/build_option_page.dart';
import '../pages/home_page/home_page.dart';
import '../pages/splash_screen/splash_screen.dart';

class MyRoutes {
  static String splashScreen = '/';
  static String homePage = 'home_page';
  static String buildOptionPage = 'build_Option_page';
  static String pdfpage = 'pdfPage';

  static String iconPath = "lib/assets/icons";
  static Map<String, WidgetBuilder> routes = {
    MyRoutes.splashScreen: (context) => const SplashScreen(),
    MyRoutes.homePage: (context) => const HomePage(),
    MyRoutes.pdfpage: (context) => const PdfPage(),
    MyRoutes.buildOptionPage: (context) => const BuildOptionPage(),
    buildOptions[0]['route']: (context) => const PersonalInfoPage(),
    buildOptions[1]['route']: (context) => const EducationPage(),
    buildOptions[2]['route']: (context) => const ExperiencePage(),
    buildOptions[3]['route']: (context) => const CertifiedPage(),
    buildOptions[4]['route']: (context) => const ProjectPage(),
    buildOptions[5]['route']: (context) => const TecnicalPage(),
    buildOptions[6]['route']: (context) => const HobbiesPage(),
    buildOptions[7]['route']: (context) => const AboutPage(),
    buildOptions[8]['route']: (context) => const AchievementPage(),
  };

  //BuildOptions
  static List buildOptions = [
    {
      'title': 'Personal info',
      'route': 'personal_info',
      'icon': '$iconPath/details.png',
    },
    {
      'title': 'Education',
      'route': 'education',
      'icon': '$iconPath/education.png',
    },
    {
      'title': 'Work Experience ',
      'route': 'experience',
      'icon': '$iconPath/experience.png',
    },
    {
      'title': 'Certified courses',
      'route': 'certified_courses',
      'icon': '$iconPath/certificate.png',
    },
    {
      'title': 'Projects ',
      'route': 'projects',
      'icon': '$iconPath/projects.png',
    },
    {
      'title': 'Technical skills',
      'route': 'technical_skills',
      'icon': '$iconPath/skills.png',
    },
    {
      'title': 'Hobbies',
      'route': 'hobbies',
      'icon': '$iconPath/hobbies.png',
    },
    {
      'title': 'About Me',
      'route': 'about_info',
      'icon': '$iconPath/info.png',
    },
    {
      'title': 'Achievements',
      'route': 'achievements',
      'icon': '$iconPath/achievement.png',
    },
  ];
}
