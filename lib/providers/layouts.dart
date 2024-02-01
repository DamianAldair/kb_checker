import 'package:flutter/material.dart';

class LayoutProvider {
  static final LayoutProvider _instance = LayoutProvider._();
  LayoutProvider._();
  factory LayoutProvider() => _instance;

  late ValueNotifier<String> _layoutNotifier;
  late ValueNotifier<Locale> _localeNotifier;

  final _layouts = [
    'ANSI',
    'ISO',
  ];

  final _locales = [
    const Locale('en', 'US'),
    const Locale('es', 'ES'),
    const Locale('es', 'LA'),
  ];

  void init() {
    _layoutNotifier = ValueNotifier<String>(_layouts.first);
    _localeNotifier = ValueNotifier<Locale>(_locales.first);
  }

  List<String> get layouts => _layouts;

  ValueNotifier<String> get layoutNotifier => _layoutNotifier;

  String get currentLayout => _layoutNotifier.value;

  set currentLayout(String layout) {
    if (_layouts.contains(layout)) {
      _layoutNotifier.value = layout;
    }
  }

  List<Locale> get locales => _locales;

  ValueNotifier<Locale> get localeNotifier => _localeNotifier;

  Locale get currentLocale => _localeNotifier.value;

  set currentLocale(Locale locale) {
    if (_locales.contains(locale)) {
      _localeNotifier.value = locale;
    }
  }
}

String getKeyInsert(String langCode) => switch (langCode.toLowerCase()) {
      _ => 'Ins',
    };

String getKeyDelete(String langCode) => switch (langCode.toLowerCase()) {
      'es' => 'Supr',
      _ => 'Del',
    };

String getKeyHome(String langCode) => switch (langCode.toLowerCase()) {
      'es' => 'Inicio',
      _ => 'Home',
    };

String getKeyEnd(String langCode) => switch (langCode.toLowerCase()) {
      'es' => 'Fin',
      _ => 'End',
    };

String getKeyPgUp(String langCode) => switch (langCode.toLowerCase()) {
      'es' => 'RePg',
      _ => 'PgUp',
    };

String getKeyPgDn(String langCode) => switch (langCode.toLowerCase()) {
      'es' => 'AvPg',
      _ => 'PgDn',
    };
