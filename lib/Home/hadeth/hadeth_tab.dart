import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:islami_quran/Home/hadeth/Hadeth.dart';

import 'hadeth_title_widget.dart';

class HadethTab extends StatefulWidget {
  @override
  State<HadethTab> createState() => _HadethTabState();
}

class _HadethTabState extends State<HadethTab> {
  List<Hadeth> allHadethList = [];

  @override
  Widget build(BuildContext context) {
    if (allHadethList.isEmpty) loadHadtehFile();
    return Container(
      child: Column(
        children: [
          Image.asset('assets/images/hadeth_header.png'),
          Expanded(
            child: ListView.separated(
              itemBuilder: (_, index) {
                return HadethTitleWidget(allHadethList[index]);
              },
              itemCount: allHadethList.length,
              separatorBuilder: (_, index) {
                return Container(
                  color: Theme.of(context).accentColor,
                  height: 1,
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: 65),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  void loadHadtehFile() async {
    List<Hadeth> hadethList = [];
    String content = await rootBundle.loadString('assets/files/ahadeth .txt');
    List<String> hadethContent = content.trim().split('#');
    for (int i = 0; i < hadethContent.length; i++) {
      String singleHadeth = hadethContent[i];
      List<String> hadsingleHadethLines = singleHadeth.trim().split('\n');
      String title = hadsingleHadethLines[0];
      hadsingleHadethLines.removeAt(0);
      String content = hadsingleHadethLines.join('\n');
      Hadeth h = Hadeth(title, content);
      hadethList.add(h);

      // String singleHadeth = hadethContent[i].trim();
      // int indexOfFirestLine = singleHadeth.indexOf('\n');
      // String title = singleHadeth.substring(0,indexOfFirestLine);
      // String content = singleHadeth.substring(indexOfFirestLine+1);
      // Hadeth h = Hadeth(title, content);
      // hadethList.add(h);
    }
    allHadethList = hadethList;
    setState(() {});
  }
}
