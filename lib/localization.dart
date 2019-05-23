import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';

class AppLocalizations {
  AppLocalizations(this.locale);
  final Locale locale;

  static AppLocalizations of(BuildContext context) =>
      Localizations.of<AppLocalizations>(context, AppLocalizations);

  static const _localizedValues = {
    'en': {
      'hello': 'Hello World',
      'title': 'Berlin Transport App',
      'search': 'Search',
      'searchHintText': 'Please enter a search term',
    },
    'de': {
      'hello': 'Hallo Welt',
      'title': 'Berliner Verkehr App',
      'search': 'Suche',
      'searchHintText': 'Bitte geben Sie einen Suchbegriff ein',
    },
  };

  String get title => _localizedValues[locale.languageCode]['title'];
  String get hello => _localizedValues[locale.languageCode]['hello'];
  String get search => _localizedValues[locale.languageCode]['search'];
  String get searchHintText =>
      _localizedValues[locale.languageCode]['searchHintText'];
}

class AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => ['en', 'de'].contains(locale.languageCode);

  @override
  Future<AppLocalizations> load(Locale locale) =>
      SynchronousFuture<AppLocalizations>(AppLocalizations(locale));

  @override
  bool shouldReload(AppLocalizationsDelegate old) => false;
}