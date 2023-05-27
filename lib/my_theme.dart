import 'package:flutter/material.dart';

class Mytheme {
  static const Color lightPrimary = Color(0XFFB7935F);
  static const Color darkPrimary = Color(0XFF131A2E);
  static const Color yellow = Color(0XFFFACC1D);
  static final ThemeData lightThem = ThemeData(
    bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          topLeft: Radius.circular(18),
          topRight: Radius.circular(18),
        ))),
    cardColor: lightPrimary,
    accentColor: lightPrimary,
    textTheme: TextTheme(
        subtitle2: TextStyle(
          fontSize: 14,
          color: Colors.black,
        ),
        headline6: TextStyle(
          fontSize: 22,
          color: Colors.black,
        ),
        headline4: TextStyle(
          fontSize: 28,
          color: Colors.black,
        )),
    scaffoldBackgroundColor: Colors.transparent,
    primaryColor: lightPrimary,
    appBarTheme: AppBarTheme(
        centerTitle: true,
        color: Colors.transparent,
        elevation: 0,
        titleTextStyle: TextStyle(
            color: Colors.brown, fontSize: 28, fontWeight: FontWeight.w500),
        iconTheme: IconThemeData(color: Colors.brown)),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      showSelectedLabels: true,
      showUnselectedLabels: false,
      selectedIconTheme: IconThemeData(size: 36, color: Colors.black),
      unselectedIconTheme: IconThemeData(size: 24, color: Colors.white),
      selectedLabelStyle: TextStyle(color: Colors.black),
      // unselectedLabelStyle: ,
      selectedItemColor: Colors.black,
      // unselectedItemColor: Colors.red
    ),
  );
  static final ThemeData darkThem = ThemeData(
    bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: darkPrimary,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          topLeft: Radius.circular(18),
          topRight: Radius.circular(18),
        ))),
    cardColor: darkPrimary,
    accentColor: yellow,
    textTheme: TextTheme(
        subtitle2: TextStyle(
          fontSize: 14,
          color: Colors.white,
        ),
        headline6: TextStyle(
          fontSize: 22,
          color: Colors.white,
        ),
        headline4: TextStyle(
          fontSize: 28,
          color: Colors.white,
        )),
    scaffoldBackgroundColor: Colors.transparent,
    primaryColor: darkPrimary,
    appBarTheme: AppBarTheme(
        centerTitle: true,
        color: Colors.transparent,
        elevation: 0,
        titleTextStyle: TextStyle(
            color: Colors.white, fontSize: 28, fontWeight: FontWeight.w500)),
    iconTheme: IconThemeData(color: Colors.white),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      showSelectedLabels: true,
      showUnselectedLabels: false,
      selectedIconTheme: IconThemeData(size: 36, color: Colors.yellow),
      unselectedIconTheme: IconThemeData(size: 24, color: Colors.white),
      selectedLabelStyle: TextStyle(color: Colors.yellow),
      // unselectedLabelStyle: ,
      selectedItemColor: Colors.yellow,
      // unselectedItemColor: Colors.red
    ),
  );
}
