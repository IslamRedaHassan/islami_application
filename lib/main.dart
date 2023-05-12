import 'package:flutter/material.dart';
import 'package:islami_quran/Home/home_screen.dart';
import 'package:islami_quran/my_theme.dart';
import 'package:islami_quran/surah_details/surah_detailed_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Mytheme.lightThem,
      routes: {
        HomeScreen.routeName: (_) => HomeScreen(),
        SurahDetaliedScreen.routeName: (_) => SurahDetaliedScreen(),
      },
      initialRoute: HomeScreen.routeName,
    );
  }
}
