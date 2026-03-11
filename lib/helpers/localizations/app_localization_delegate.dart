import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:relation/helpers/localizations/language.dart';
import 'package:relation/helpers/logger/logger.dart';
import 'package:relation/helpers/storage/local_storage.dart';
import 'package:relation/helpers/theme/app_notifier.dart';

class AppLocalizationsDelegate extends LocalizationsDelegate {
  final BuildContext context;

  const AppLocalizationsDelegate(this.context);

  @override
  bool isSupported(Locale locale) =>
      Language.getLanguagesCodes().contains(locale.languageCode);

  @override
  Future load(Locale locale) => _load(locale);

  Future _load(Locale locale) async {
    logI("LOAD LANGUAGE====${LocalStorage.getLanguage()}");
    if (LocalStorage.getLanguage() != null) {
      Provider.of<AppNotifier>(context, listen: false).changeLanguage(Language(
          Locale(LocalStorage.getLanguage() ?? ""),
          LocalStorage.getLanguage() == "en" ? "English" : "Français"));
    } else {
      Provider.of<AppNotifier>(context, listen: false)
          .changeLanguage(Language.getLanguageFromCode(locale.languageCode));
    }

    return;
  }

  @override
  bool shouldReload(LocalizationsDelegate old) => false;
}
