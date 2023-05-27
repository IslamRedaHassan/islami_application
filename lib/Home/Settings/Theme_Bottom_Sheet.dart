import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import '../../providers/settings_provider.dart';

class ThemBottomSheet extends StatefulWidget {
  @override
  State<ThemBottomSheet> createState() => _ThemBottomSheetState();
}

class _ThemBottomSheetState extends State<ThemBottomSheet> {
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
                settingsProvider.changeTheme(ThemeMode.light);
              },
              child: settingsProvider.isDarkMode()
                  ? getUnSelctedItem(AppLocalizations.of(context)!.light)
                  : getSelctedItem(AppLocalizations.of(context)!.light)),
          SizedBox(
            height: 12,
          ),
          InkWell(
              onTap: () {
                settingsProvider.changeTheme(ThemeMode.dark);
              },
              child: settingsProvider.isDarkMode()
                  ? getSelctedItem(AppLocalizations.of(context)!.dark)
                  : getUnSelctedItem(AppLocalizations.of(context)!.dark))
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
