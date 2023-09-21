import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_app/shared/styles/colors/app_colors.dart';

class MyThemeData {
  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: primaryColor,
    primaryColor: primaryColor,
    colorScheme: const ColorScheme(
        brightness: Brightness.light,
        primary: primaryColor,
        onPrimary: Colors.black54,
        secondary: primaryColor,
        onSecondary: Colors.black,
        error: Colors.red,
        onError: Colors.white,
        background: Colors.transparent,
        onBackground: primaryColor,
        surface: Colors.white,
        onSurface: Colors.black),
    appBarTheme: AppBarTheme(
      titleTextStyle: GoogleFonts.elMessiri(
          fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
      iconTheme: const IconThemeData(
        color: primaryColor,
      ),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      type: BottomNavigationBarType.shifting,
      selectedItemColor: yellowColor,
      unselectedItemColor: iconColor,
    ),
  );

  static ThemeData darkTheme = ThemeData(
    primaryColor: primaryColor,
    scaffoldBackgroundColor: Colors.transparent,
    colorScheme: const ColorScheme(
        brightness: Brightness.dark,
        primary: primaryColor,
        onPrimary: yellowColor,
        secondary: primaryColor,
        onSecondary: Colors.white,
        error: Colors.red,
        onError: Colors.white,
        background: Colors.transparent,
        onBackground: yellowColor,
        surface: Colors.white,
        onSurface: primaryColor),
    appBarTheme: AppBarTheme(
        titleTextStyle: GoogleFonts.elMessiri(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: const Color(0xFF242424)),
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(color: primaryColor),
        elevation: 0.0,
        centerTitle: true),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        type: BottomNavigationBarType.shifting,
        //showSelectedLabels: false,
        //showUnselectedLabels: false,
        backgroundColor: primaryColor,
        selectedItemColor: yellowColor,
        unselectedItemColor: Colors.white,
        selectedLabelStyle: GoogleFonts.quicksand(fontSize: 12),
        unselectedLabelStyle: GoogleFonts.quicksand(fontSize: 12)),
  );
}
