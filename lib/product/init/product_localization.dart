import 'package:bloc_training_template/product/utility/enums/locales.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

@immutable
//Product localization manager
final class ProductLocalization extends EasyLocalization {
  /// ProductLocalitazion need to [child] for a wrap locale item
  ProductLocalization({required super.child, super.key})
      : super(
          supportedLocales: _supportedItems,
          path: _translationPath,
          useOnlyLangCode: true,
        );

  static final List<Locale> _supportedItems = [
    Locales.tr.locale,
    Locales.en.locale,
  ];
  static const String _translationPath = 'asset/translations';

  //Change project language by using  
  static Future<void> updateLanguage({
    required BuildContext context,
    required Locales value,
  }) =>
      context.setLocale(value.locale);
}