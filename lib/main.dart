import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:islami_quran/Home/home_screen.dart';
import 'package:islami_quran/hadeth_deatails/hadeth_deatils_screen.dart';
import 'package:islami_quran/my_theme.dart';
import 'package:islami_quran/providers/settings_provider.dart';
import 'package:islami_quran/surah_details/surah_detailed_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (buildContext) => SettingsProvider(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<SettingsProvider>(context);
    return MaterialApp(
      theme: Mytheme.lightThem,
      darkTheme: Mytheme.darkThem,
      themeMode: settingsProvider.currentThem,
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale(settingsProvider.currentLanguage),
      routes: {
        HomeScreen.routeName: (_) => HomeScreen(),
        SurahDetaliedScreen.routeName: (_) => SurahDetaliedScreen(),
        HadethDetailsScreen.routeName: (_) => HadethDetailsScreen(),
      },
      initialRoute: HomeScreen.routeName,
    );
  }
}
