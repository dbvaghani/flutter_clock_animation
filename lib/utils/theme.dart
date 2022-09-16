import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants.dart';

class Themes {
  static final light = ThemeData.light().copyWith(
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
    ),
    appBarTheme: appBarTheme,
    primaryColor: kPrimaryColor,
    scaffoldBackgroundColor: Colors.white,
    backgroundColor: Colors.white,
    iconTheme: IconThemeData(color: kBodyTextColorLight),
    primaryIconTheme: IconThemeData(color: kPrimaryIconLightColor),
    textTheme: GoogleFonts.latoTextTheme().copyWith(
      bodyText1: TextStyle(color: kBodyTextColorLight),
      bodyText2: TextStyle(color: kBodyTextColorLight),
      headline4: TextStyle(color: kTitleTextLightColor, fontSize: 32),
      headline1: TextStyle(color: kTitleTextLightColor, fontSize: 80),
    ),
  );

  static final dark = ThemeData.dark().copyWith(
    primaryColor: kPrimaryColor,
    scaffoldBackgroundColor: Color(0xFF0D0C0E),
    appBarTheme: appBarTheme,
    backgroundColor: kBackgroundDarkColor,
    iconTheme: IconThemeData(color: kBodyTextColorDark),
    primaryIconTheme: IconThemeData(color: kPrimaryIconDarkColor),
    textTheme: GoogleFonts.latoTextTheme().copyWith(
      bodyText1: TextStyle(color: kBodyTextColorDark),
      bodyText2: TextStyle(color: kBodyTextColorDark),
      headline4: TextStyle(color: kTitleTextDarkColor, fontSize: 32),
      headline1: TextStyle(color: kTitleTextDarkColor, fontSize: 80),
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
    ).copyWith(secondary: kAccentDarkColor),
  );
}

AppBarTheme appBarTheme = AppBarTheme(color: Colors.transparent, elevation: 0);
