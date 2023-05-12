import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:islami_quran/surah_details/surah_details_agruments.dart';

import 'vesrseWidget.dart';

class SurahDetaliedScreen extends StatefulWidget {
  static const String routeName = 'SurahDetaliedScreen';

  @override
  State<SurahDetaliedScreen> createState() => _SurahDetaliedScreenState();
}

class _SurahDetaliedScreenState extends State<SurahDetaliedScreen> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    SurahDetaliedScreenArg args =
        (ModalRoute.of(context)?.settings.arguments) as SurahDetaliedScreenArg;
    if (verses.isEmpty) readFile(args.index + 1);
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/screen_one_background.png'),
              fit: BoxFit.fill)),
      child: Scaffold(
        appBar: AppBar(
          title: Text(args.name),
        ),
        body: Card(
          elevation: 12,
          margin: EdgeInsets.symmetric(horizontal: 24, vertical: 64),
          color: Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          child: ListView.separated(
            itemBuilder: (_, index) {
              return VerseWidget(verses[index], index + 1);
            },
            itemCount: verses.length,
            separatorBuilder: (_, __) {
              return Container(
                color: Theme.of(context).primaryColor,
                height: 1,
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 64),
              );
            },
          ),
        ),
      ),
    );
  }

  void readFile(int fileIndex) async {
    String fileContent =
        await rootBundle.loadString('assets/files/$fileIndex.txt');
    List<String> lines = fileContent.trim().split('\n');
    setState(() {
      verses = lines;
    });
  }
}
