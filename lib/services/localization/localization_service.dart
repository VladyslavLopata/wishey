import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:wishey_restart/services/localization/languages/en_us.dart';

class LocalizationServise extends Translations {
  static const locale = Locale('en', 'US');

  static final locales = [
    const Locale('en', 'US'),
  ];

  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': enUS,
      };
}
