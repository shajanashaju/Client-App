import 'package:flutter/material.dart';

class L10n {
  static final all = [
    const Locale('en'),
    const Locale('pt'),
    const Locale('es')
  ];

  static getLang(String code) {
    switch (code) {
      case 'pt':
        return 'Português';
      case 'es':
        return 'español';
      case 'en':
      default:
        return 'English';
    }
  }
}
