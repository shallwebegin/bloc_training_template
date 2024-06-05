import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

//Project  locale enum for operation configuration
enum Locales {
  //Turkish locale
  tr(Locale('tr', 'TR')),
  //Englsih locale
  en(Locale('en', 'US'));

  //Locale value
  const Locales(this.locale);
  final Locale locale;

  //Project supported locales
  static final List<Locale> supportedLocales = [
    Locales.tr.locale,
    Locales.en.locale,
  ];
}
