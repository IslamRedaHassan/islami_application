import 'dart:math' as maths;

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SebhaTab extends StatefulWidget {
  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int counter = 0;
  List<String> tsbeh = [
    'سبحان الله',
    'الحمد الله',
    'الله أكبر',
    'لا إاله إلا الله',
  ];
  int index = 0;
  double angel = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Stack(alignment: Alignment.topCenter, children: [
            Image.asset('assets/images/head_of_sebha.png'),
            GestureDetector(
                onTap: tsbehCounter,
                child: Transform.rotate(
                    angle: maths.pi / 100 * angel,
                    child: Padding(
                      padding: EdgeInsets.all(
                        MediaQuery.of(context).size.height * .08,
                      ),
                      child: Image.asset('assets/images/sebha_body.png'),
                    ))),
          ]),
          Padding(
            padding: EdgeInsets.all(
              MediaQuery.of(context).size.height * .001,
            ),
            child: Text(
              'عدد التسبيحات',
              style: TextStyle(fontSize: 28, color: Colors.brown),
            ),
          ),
          Container(
            alignment: Alignment.center,
            height: 70,
            width: 70,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Theme.of(context).primaryColor),
            child: Text(
              '$counter',
              style: TextStyle(
                fontSize: 28,
                color: Colors.black,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 20),
            alignment: Alignment.center,
            height: 70,
            width: 200,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Theme.of(context).primaryColor),
            child: Text(
              '${tsbeh[index]}',
              style: TextStyle(
                fontSize: 28,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }

  void tsbehCounter() {
    counter++;
    if (counter % 33 == 0) {
      index++;
    }
    if (index == tsbeh.length) {
      index = 0;
    }
    angel += 100 / 33;
    setState(() {});
  }
}
