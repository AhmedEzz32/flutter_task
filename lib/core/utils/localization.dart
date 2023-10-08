import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocaleProvider extends ChangeNotifier {
  late SharedPreferences _preferences;

  LocaleProvider() {
    _loadPreferences();
  }

  Locale _appLocale = Locale('en');

  Locale get appLocale => _appLocale;

  Future<void> _loadPreferences() async {
    _preferences = await SharedPreferences.getInstance();
    final savedLocale = _preferences.getString('app_locale');
    if (savedLocale != null) {
      _appLocale = Locale(savedLocale);
    }
  }

  void changeLanguage(Locale newLocale) {
    if (_appLocale == newLocale) return;

    _appLocale = newLocale;
    _preferences.setString('app_locale', newLocale.languageCode);
    notifyListeners();
  }
}
