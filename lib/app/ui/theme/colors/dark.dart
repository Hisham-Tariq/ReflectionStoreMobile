import 'package:flutter/material.dart';
import 'colors_interface.dart';

class DarkThemeColors implements ThemeColors {
  // Primary
  @override
  final primaryLight = const Color(0xFFFDE047);
  @override
  final primary = const Color(0xFFFACC15);
  @override
  final primaryDark = const Color(0xFFEAB308);
  @override
  final onPrimary = const Color(0xFF000000);


  // Secondary
  @override
  final secondary = const Color(0xFF00334E);
  @override
  final secondary400 = const Color(0xFF1E6A92);
  @override
  final secondary300 = const Color(0xFF57AAD6);
  @override
  final secondary200 = const Color(0xFFBAE7FF);
  @override
  final secondary100 = const Color(0xFFF5FBFF);
  @override
  final onSecondaryLight = const Color(0xFFFFFFFF);
  @override
  final onSecondaryDark = const Color(0xFF111827);


  // GreyScale
  @override
  final grey50 = const Color(0xFFF9FAFB);
  @override
  final grey100 = const Color(0xFFF3F4F6);
  @override
  final grey200 = const Color(0xFFE5E7EB);
  @override
  final grey300 = const Color(0xFFD1D5DB);
  @override
  final grey400 = const Color(0xFF9CA3AF);
  @override
  final grey500 = const Color(0xFF6B7280);
  @override
  final grey600 = const Color(0xFF4B5563);
  @override
  final grey700 = const Color(0xFF374151);
  @override
  final grey800 = const Color(0xFF1F2937);
  @override
  final grey900 = const Color(0xFF1a1a1a);

  // Success
  @override
  final successLight = const Color(0xFF4ADE80);
  @override
  final success = const Color(0xFF22C55E);
  @override
  final successDark = const Color(0xFF16A34A);
  @override
  final onSuccess = const Color(0xFF111827);

  // Warning
  @override
  final warningLight = const Color(0xFFFDE047);
  @override
  final warning = const Color(0xFFFACC15);
  @override
  final warningDark = const Color(0xFFEAB308);
  @override
  final onWarning = const Color(0xFF111827);

  // Error
  @override
  final errorLight = const Color(0xFFFF7171);
  @override
  final error = const Color(0xFFFF4747);
  @override
  final errorDark = const Color(0xFFDD3333);
  @override
  final onError = const Color(0xFF000000);

  @override
  final background = const Color(0xFF0d0d0d);
  @override
  final onBackground = const Color(0xFFffffff);


  @override
  final inverseBackground = const Color(0xFFFFFFFF);
  @override
  final onInverseBackground = const Color(0xFF0d0d0d);

  @override
  Color get black => const Color(0xFF0d0d0d);

  @override
  Color get white => const Color(0xFFFFFFFF);

}
