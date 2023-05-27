import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_quran/Home/hadeth/hadeth_tab.dart';
import 'package:islami_quran/Home/quran/quran_tab.dart';
import 'package:islami_quran/Home/radio/radio_tab.dart';
import 'package:islami_quran/Home/sebha/sebha_tab.dart';
import 'package:provider/provider.dart';

import '../providers/settings_provider.dart';
import 'Settings/settings_tab.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'HomeScreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<SettingsProvider>(context);
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(settingsProvider.gettingMainBackground()),
              fit: BoxFit.fill)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text(AppLocalizations.of(context)!.app_title),
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (newlySelectedIndex) {
            setState(() {
              selectedIndex = newlySelectedIndex;
            });
          },
          currentIndex: selectedIndex,
          items: [
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: ImageIcon(AssetImage('assets/images/quran.png')),
                label: AppLocalizations.of(context)!.quran),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: ImageIcon(
                    AssetImage('assets/images/quran-quran-svgrepo-com.png')),
                label: AppLocalizations.of(context)!.hadeth),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: ImageIcon(AssetImage('assets/images/sebha.png')),
                label: AppLocalizations.of(context)!.mention),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: ImageIcon(AssetImage('assets/images/radio.png')),
                label: AppLocalizations.of(context)!.radio),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: Icon(Icons.settings),
                label: AppLocalizations.of(context)!.settings),
          ],
        ),
        body: tabs[selectedIndex],
      ),
    );
  }

  List<Widget> tabs = [
    QuranTab(),
    HadethTab(),
    SebhaTab(),
    RadioTab(),
    SettingsTab()
  ];
}
