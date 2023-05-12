import 'package:flutter/material.dart';

class Mytheme {
  static const Color lightPrimary = Color(0XFFB7935F);
  static const Color darkPrimary = Color(0XFF131A2E);

  static final ThemeData lightThem = ThemeData(
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
// static final ThemeData darkThem = ThemeData(
//   scaffoldBackgroundColor: Colors.transparent,
//   primaryColor: darkPrimary,
//   appBarTheme: AppBarTheme(
//       centerTitle: true,
//       color: Colors.transparent,
//       elevation: 0,
//       titleTextStyle: TextStyle(
//           color: Colors.brown,
//           fontSize: 28,
//           fontWeight: FontWeight.w500
//       )
//   ),
//   bottomNavigationBarTheme: BottomNavigationBarThemeData(
//     showSelectedLabels: true,
//     showUnselectedLabels: false,
//     selectedIconTheme: IconThemeData(
//         size: 36,
//         color: Colors.black
//     ) ,
//     unselectedIconTheme:IconThemeData(
//         size: 24,
//         color: Colors.white
//     ),
//     selectedLabelStyle: TextStyle(
//         color: Colors.black
//     ),
//     // unselectedLabelStyle: ,
//     selectedItemColor: Colors.black,
//     // unselectedItemColor: Colors.red
//   ),
//
// );

}
