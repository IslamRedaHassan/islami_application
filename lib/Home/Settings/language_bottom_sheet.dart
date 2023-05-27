import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/settings_provider.dart';

class LanguageBottom extends StatefulWidget {
  @override
  State<LanguageBottom> createState() => _LanguageBottomState();
}

class _LanguageBottomState extends State<LanguageBottom> {
  @override
  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<SettingsProvider>(context);
    return Container(
      padding: EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          InkWell(
              onTap: () {
                settingsProvider.changeLanguage('en');
              },
              child: settingsProvider.currentLanguage == 'en'
                  ? getSelctedItem('English')
                  : getUnSelctedItem('English')),
          SizedBox(
            height: 12,
          ),
          InkWell(
              onTap: () {
                settingsProvider.changeLanguage('ar');
              },
              child: settingsProvider.currentLanguage == 'ar'
                  ? getSelctedItem('العربية')
                  : getUnSelctedItem('العربية'))
        ],
      ),
    );
  }

  Widget getSelctedItem(String title) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context)
              .textTheme
              .headline4
              ?.copyWith(color: Theme.of(context).accentColor),
        ),
        Icon(
          Icons.check,
          color: Theme.of(context).accentColor,
        ),
      ],
    );
  }

  Widget getUnSelctedItem(String title) {
    return Text(
      title,
      style: Theme.of(context).textTheme.headline4,
    );
  }
}
