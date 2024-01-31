import 'package:flutter/material.dart';

class ApplicationThemeManager {
  static const Color primaryColor = Color(0xFFB7935F);
  static ThemeData lightTheme = ThemeData(
    primaryColor: primaryColor,
    useMaterial3: true,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: const AppBarTheme(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        iconTheme: IconThemeData(
          color: Color(0xFF242424),
        ),
        titleTextStyle: TextStyle(
          fontFamily: "El Messiri",
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Color(0xFF242424),
        )),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: primaryColor,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Color(0xFF242424),
      selectedLabelStyle: TextStyle(
        fontFamily: "El Messiri",
        fontSize: 17,
        fontWeight: FontWeight.bold,
        color: Color(0xFF242424),
      ),
      selectedIconTheme: IconThemeData(
        color: Color(0xFF242424),
      ),
      unselectedItemColor: Colors.white,
      unselectedLabelStyle: TextStyle(
        fontFamily: "El Messiri",
        fontSize: 12,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      unselectedIconTheme: IconThemeData(
        color: Colors.white,
      ),
    ),
    textTheme: const TextTheme(
      titleLarge: TextStyle(
        fontFamily: "El Messiri",
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: Color(0xFF242424),
      ),
    ),
  );
}
