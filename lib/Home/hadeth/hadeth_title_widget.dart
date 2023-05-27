import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:islami_quran/Home/hadeth/Hadeth.dart';

import '../../hadeth_deatails/hadeth_deatils_screen.dart';

class HadethTitleWidget extends StatelessWidget {
  Hadeth hadeth;

  HadethTitleWidget(this.hadeth);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, HadethDetailsScreen.routeName,
            arguments: hadeth);
      },
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(4),
        child: Text(
          hadeth.title,
          style: Theme.of(context).textTheme.headline4,
        ),
      ),
    );
  }
}
