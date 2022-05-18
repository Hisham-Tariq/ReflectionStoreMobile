import 'package:flutter/material.dart';
import 'package:my_app/app/ui/theme/colors/colors.dart';
import 'package:my_app/app/ui/theme/text_theme.dart';
import 'package:my_app/app/ui/theme/theme_data.dart';

var _colors = DarkThemeColors();
ThemeData _themeData = CustomTheme.create(_colors, Brightness.dark);

ThemeData darkTheme = _themeData.copyWith(
  textTheme: _themeData.textTheme.copyWith(
    subtitle1: AppTextStyle(
      color: _colors.grey50,
    ),
  ),
  inputDecorationTheme: _themeData.inputDecorationTheme.copyWith(
    filled: true,
    fillColor: _colors.grey900,
    iconColor: _colors.grey400,
    hintStyle: AppTextStyle(
      color: _colors.grey400,
    ),
  ),
);