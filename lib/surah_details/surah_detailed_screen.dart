import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:islami_quran/surah_details/surah_details_agruments.dart';

class SurahDetaliedScreen extends StatelessWidget {
  static const String routeName = 'SurahDetaliedScreen';

  @override
  Widget build(BuildContext context) {
    SurahDetaliedScreenArg args =
        (ModalRoute.of(context)?.settings.arguments) as SurahDetaliedScreenArg;
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/screen_one_background.png'),
              fit: BoxFit.fill)),
      child: Scaffold(
        appBar: AppBar(
          title: Text(args.name),
        ),
      ),
    );
  }
}
