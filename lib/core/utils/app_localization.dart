import 'package:flutter/material.dart';

class AppLocalizations {
  final Locale locale;

  AppLocalizations(this.locale);

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
  _AppLocalizationsDelegate();

  static final Map<String, Map<String, String>> _localizedValues = {
    'en': AppLocalizationsEn.localizedValues,
    'ar': AppLocalizationsAr.localizedValues,
  };

  String? getTranslation(String key) {
    return _localizedValues[locale.languageCode]?[key];
  }
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => ['en', 'ar'].contains(locale.languageCode);

  @override
  Future<AppLocalizations> load(Locale locale) async {
    return AppLocalizations(locale);
  }

  @override
  bool shouldReload(LocalizationsDelegate<AppLocalizations> old) => false;
}

class AppLocalizationsEn {
  static const Map<String, String> localizedValues = {
    'greeting': 'Hello',
    'settings': 'Settings',
    // Add more localized strings for English here
  };
}

class AppLocalizationsAr {
  static const Map<String, String> localizedValues = {
    'greeting': 'مرحباً',
    'settings': 'الإعدادات',
    // Add more localized strings for Arabic here
  };
}

