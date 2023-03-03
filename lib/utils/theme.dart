import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants.dart';

class Themes {
  static final light = ThemeData.light().copyWith(
    appBarTheme: appBarTheme,
    primaryColor: kPrimaryColor,
    scaffoldBackgroundColor: Colors.white,
    iconTheme: IconThemeData(color: kBodyTextColorLight),
    primaryIconTheme: IconThemeData(color: kPrimaryIconLightColor),
    textTheme: GoogleFonts.latoTextTheme().copyWith(
      bodyLarge: TextStyle(color: kBodyTextColorLight),
      bodyMedium: TextStyle(color: kBodyTextColorLight),
      headlineMedium: TextStyle(color: kTitleTextLightColor, fontSize: 32),
      headlineLarge: TextStyle(color: kTitleTextLightColor, fontSize: 80),
    ),
    colorScheme: ColorScheme(
      brightness: Brightness.light,
      primary: kPrimaryColor,
      onPrimary: kPrimaryColor,
      secondary: kAccentIconLightColor,
      onBackground: kAccentIconLightColor,
      onSecondary: kAccentIconLightColor,
      error: Colors.red,
      onError: Colors.red,
      surface: Colors.white,
      onSurface: Colors.white,
      background: Colors.white,
    ).copyWith(background: Colors.white),
  );

  static final dark = ThemeData.dark().copyWith(
    primaryColor: kPrimaryColor,
    scaffoldBackgroundColor: Color(0xFF0D0C0E),
    appBarTheme: appBarTheme,
    iconTheme: IconThemeData(color: kBodyTextColorDark),
    primaryIconTheme: IconThemeData(color: kPrimaryIconDarkColor),
    textTheme: GoogleFonts.latoTextTheme().copyWith(
      bodyLarge: TextStyle(color: kBodyTextColorDark),
      bodyMedium: TextStyle(color: kBodyTextColorDark),
      headlineMedium: TextStyle(color: kTitleTextDarkColor, fontSize: 32),
      displayLarge: TextStyle(color: kTitleTextDarkColor, fontSize: 80),
    ),
    colorScheme: ColorScheme.light(
      brightness: Brightness.light,
      primary: kPrimaryColor,
      onPrimary: kPrimaryColor,
      secondary: kSecondaryDarkColor,
      onBackground: kSecondaryDarkColor,
      onSecondary: kAccentIconDarkColor,
      error: Colors.red,
      onError: Colors.red,
      surface: kSurfaceDarkColor,
      onSurface: Colors.white,
      background: Colors.white,
    )
        .copyWith(secondary: kAccentDarkColor)
        .copyWith(background: kBackgroundDarkColor),
  );
}

AppBarTheme appBarTheme = AppBarTheme(color: Colors.transparent, elevation: 0);
