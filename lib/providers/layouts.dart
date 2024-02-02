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

(String, String, String) getKeyBeforeNums(Locale locale) =>
    switch (locale.countryCode?.toUpperCase()) {
      'ES' => ('º', 'ª', '\\'),
      'LA' => ('|', '°', '¬'),
      _ => ('`', '~', ''),
    };

(String, String) getKeyNum1(Locale locale) =>
    switch (locale.countryCode?.toUpperCase()) {
      'ES' => ('!', '|'),
      'LA' => ('!', ''),
      _ => ('!', ''),
    };

(String, String) getKeyNum2(Locale locale) =>
    switch (locale.countryCode?.toUpperCase()) {
      'ES' => ('"', '@'),
      'LA' => ('"', ''),
      _ => ('@', ''),
    };

(String, String) getKeyNum3(Locale locale) =>
    switch (locale.countryCode?.toUpperCase()) {
      'ES' => ('·', '#'),
      'LA' => ('#', ''),
      _ => ('#', ''),
    };

(String, String) getKeyNum6(Locale locale) =>
    switch (locale.countryCode?.toUpperCase()) {
      'ES' => ('&', '¬'),
      'LA' => ('&', ''),
      _ => ('^', ''),
    };

(String, String) getKeyNum7(Locale locale) =>
    switch (locale.countryCode?.toUpperCase()) {
      'ES' => ('/', ''),
      'LA' => ('/', ''),
      _ => ('&', ''),
    };

(String, String) getKeyNum8(Locale locale) =>
    switch (locale.countryCode?.toUpperCase()) {
      'ES' => ('(', ''),
      'LA' => ('(', ''),
      _ => ('*', ''),
    };

(String, String) getKeyNum9(Locale locale) =>
    switch (locale.countryCode?.toUpperCase()) {
      'ES' => (')', ''),
      'LA' => (')', ''),
      _ => ('(', ''),
    };

(String, String) getKeyNum0(Locale locale) =>
    switch (locale.countryCode?.toUpperCase()) {
      'ES' => ('=', ''),
      'LA' => ('=', ''),
      _ => (')', ''),
    };

(String, String, String) getKeyAfterNums1(Locale locale) =>
    switch (locale.countryCode?.toUpperCase()) {
      'ES' => ('\'', '?', ''),
      'LA' => ('\'', '?', '\\'),
      _ => ('-', '_', ''),
    };

(String, String, String) getKeyAfterNums2(Locale locale) =>
    switch (locale.countryCode?.toUpperCase()) {
      'ES' => ('¡', '¿', ''),
      'LA' => ('¿', '¡', ''),
      _ => ('=', '+', ''),
    };

String? getKeyQ(Locale locale) => switch (locale.countryCode?.toUpperCase()) {
      'LA' => '@',
      _ => null,
    };

String? getKeyE(Locale locale) => switch (locale.countryCode?.toUpperCase()) {
      'ES' => '€',
      _ => null,
    };

(String, String, String) getKeyAfter1Letters1(Locale locale) =>
    switch (locale.countryCode?.toUpperCase()) {
      'ES' => ('`', '^', '['),
      'LA' => ('\u00b4', '¨', ''),
      _ => ('[', '{', ''),
    };

(String, String, String) getKeyAfter1Letters2(Locale locale) =>
    switch (locale.countryCode?.toUpperCase()) {
      'ES' => ('+', '*', ']'),
      'LA' => ('*', '+', '~'),
      _ => (']', '}', ''),
    };

(String, String, String) getKeyAfter1Letters3(Locale locale) =>
    switch (locale.countryCode?.toUpperCase()) {
      'ES' => ('', 'Ç', '}'),
      'LA' => ('}', ']', '`'),
      _ => ('\\', '|', ''),
    };

(String, String?, String?) getKeyAfter2Letters1(Locale locale) =>
    switch (locale.countryCode?.toUpperCase()) {
      'ES' => ('Ñ', null, null),
      'LA' => ('Ñ', null, null),
      _ => (';', ':', ''),
    };

(String, String, String) getKeyAfter2Letters2(Locale locale) =>
    switch (locale.countryCode?.toUpperCase()) {
      'ES' => ('\u00b4', '¨', '{'),
      'LA' => ('{', '[', '^'),
      _ => ('\u00b4', '"', ''),
    };

(String, String) getKeyAfter3Letters1(Locale locale) =>
    switch (locale.countryCode?.toUpperCase()) {
      'ES' => (',', ';'),
      'LA' => (',', ';'),
      _ => (',', '<'),
    };

(String, String) getKeyAfter3Letters2(Locale locale) =>
    switch (locale.countryCode?.toUpperCase()) {
      'ES' => ('.', ':'),
      'LA' => ('.', ':'),
      _ => ('.', '>'),
    };

(String, String) getKeyAfter3Letters3(Locale locale) =>
    switch (locale.countryCode?.toUpperCase()) {
      'ES' => ('-', '_'),
      'LA' => ('-', '_'),
      _ => ('/', '?'),
    };

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
