import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:islami_quran/surah_details/surah_detailed_screen.dart';
import 'package:islami_quran/surah_details/surah_details_agruments.dart';

class SurahTitleWidget extends StatelessWidget {
  String title;
  int index;

  SurahTitleWidget(this.title, this.index);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, SurahDetaliedScreen.routeName,
            arguments: SurahDetaliedScreenArg(
              name: title,
              index: index,
            ));
      },
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(4),
        child: Text(
          title,
          style: TextStyle(fontSize: 28),
        ),
      ),
    );
  }
}
