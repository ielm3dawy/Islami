import 'package:flutter/material.dart';

class ApplicationThemeManager {
  static const Color primaryColor = Color(0xFFB7935F);
  static const Color primaryDarkColor = Color(0xFFFACC1D);
  static ThemeData lightTheme = ThemeData(
    primaryColor: primaryColor,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      titleTextStyle: TextStyle(
        fontFamily: "ElMessiri",
        color: Color(0xFF242424),
        fontSize: 30,
        fontWeight: FontWeight.bold,
      ),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: primaryColor,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Color(0xFF000000),
      selectedIconTheme: IconThemeData(
        color: Color(0xFF000000),
        size: 35,
      ),
      selectedLabelStyle: TextStyle(
        fontFamily: "ElMessiri",
        fontSize: 18,
        fontWeight: FontWeight.w800,
      ),
      showUnselectedLabels: false,
      unselectedItemColor: Color(0xFFFFFFFF),
      unselectedIconTheme: IconThemeData(
        color: Color(0xFFFFFFFF),
        size: 28,
      ),
    ),
    dividerTheme: DividerThemeData(
      color: primaryColor,
      space: 10,
      thickness: 3,
    ),
    textTheme: const TextTheme(
      titleLarge: TextStyle(
        fontFamily: "ElMessiri",
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: Color(0xFF242424),
      ),
      bodyLarge: TextStyle(
        fontFamily: "ElMessiri",
        fontSize: 25,
        fontWeight: FontWeight.w600,
        color: Color(0xFF242424),
      ),
      bodyMedium: TextStyle(
        fontFamily: "ElMessiri",
        fontSize: 25,
        fontWeight: FontWeight.w400,
        color: Color(0xFF242424),
      ),
      bodySmall: TextStyle(
        fontFamily: "ElMessiri",
        fontSize: 25,
        fontWeight: FontWeight.w400,
        color: Color(0xFF242424),
      ),
      displaySmall: TextStyle(
        fontFamily: "ElMessiri",
        height: 2,
        fontSize: 19.5,
        fontWeight: FontWeight.w600,
        color: Color(0xFF242424),
      ),
    ),
  );
  static ThemeData darkTheme = ThemeData(
    primaryColor: primaryDarkColor,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      titleTextStyle: TextStyle(
        fontFamily: "ElMessiri",
        color: Colors.white,
        fontSize: 30,
        fontWeight: FontWeight.bold,
      ),
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Color(0xFF141A2E),
      type: BottomNavigationBarType.fixed,
      selectedItemColor: primaryDarkColor,
      selectedIconTheme: IconThemeData(
        color: primaryDarkColor,
        size: 35,
      ),
      selectedLabelStyle: TextStyle(
        fontFamily: "ElMessiri",
        fontSize: 18,
        fontWeight: FontWeight.w800,
      ),
      showUnselectedLabels: false,
      unselectedItemColor: Color(0xFFFFFFFF),
      unselectedIconTheme: IconThemeData(
        color: Color(0xFFFFFFFF),
        size: 28,
      ),
    ),
    dividerTheme: const DividerThemeData(
      color: primaryDarkColor,
      space: 10,
      thickness: 3,
    ),
    textTheme: const TextTheme(
      titleLarge: TextStyle(
        fontFamily: "ElMessiri",
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: primaryDarkColor,
      ),
      bodyLarge: TextStyle(
        fontFamily: "ElMessiri",
        fontSize: 25,
        fontWeight: FontWeight.w600,
        color: primaryDarkColor,
      ),
      bodyMedium: TextStyle(
        fontFamily: "ElMessiri",
        fontSize: 25,
        fontWeight: FontWeight.w400,
        color: primaryDarkColor,
      ),
      bodySmall: TextStyle(
        fontFamily: "ElMessiri",
        fontSize: 25,
        fontWeight: FontWeight.w400,
        color: primaryDarkColor,
      ),
      displaySmall: TextStyle(
        fontFamily: "ElMessiri",
        height: 2,
        fontSize: 19.5,
        fontWeight: FontWeight.w600,
        color: primaryColor,
      ),
    ),
  );
}
