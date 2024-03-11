import 'dart:async';

import 'package:flutter/material.dart';

import '../../utils/routes_utils.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(
      const Duration(seconds: 3),
      () {
        Navigator.pushReplacementNamed(
          context,
          MyRoutes.homePage,
        );
      },
    );

    // Timer.periodic(
    //   const Duration(seconds: 3),
    //   (tick) {
    //     Navigator.pushReplacementNamed(
    //       context,
    //       MyRoutes.homePage,
    //     );
    //     tick.cancel();
    //   },
    // );
    super.initState();
  }

  @override
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
