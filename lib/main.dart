
// 1- read data from files
// 2- localization (en) (ar)
// 3- dark theme
// 4- state mangment (provider)
import 'package:flutter/material.dart';
import 'package:islami_app_c10_sun_7pm/config/application_theme_manager.dart';
import 'package:islami_app_c10_sun_7pm/layout/layout_view.dart';
import 'package:islami_app_c10_sun_7pm/moduls/splash/page/splash_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Isami App',
      debugShowCheckedModeBanner: false,
      theme: ApplicationThemeManager.lightTheme,
      themeMode: ThemeMode.light,
      initialRoute: SplashView.routeName,
      routes: {
        SplashView.routeName : (context) => const SplashView(),
        LayoutView.routeName : (context) =>  LayoutView(),
      },
    );
  }
}
