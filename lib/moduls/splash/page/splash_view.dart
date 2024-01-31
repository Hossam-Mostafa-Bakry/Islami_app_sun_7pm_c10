import 'dart:async';

import 'package:flutter/material.dart';
import 'package:islami_app_c10_sun_7pm/layout/layout_view.dart';

class SplashView extends StatefulWidget {
  static const String routeName = "/";

  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {

  late int currency;

  @override
  void initState() {

    Timer(
      const Duration(seconds: 3),
      () {
        Navigator.pushReplacementNamed(
          context,
          LayoutView.routeName,
        );
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Image.asset(
        "assets/images/splash_background.png",
        height: mediaQuery.height,
        width: mediaQuery.width,
        fit: BoxFit.cover,
      ),
    );
  }
}
