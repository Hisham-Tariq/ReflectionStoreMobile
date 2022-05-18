import 'package:flutter/material.dart';
import 'colors/colors.dart';
import 'colors/colors_interface.dart';

var _darkColors = DarkThemeColors();
var _lightColors = LightThemeColors();

class AppColors implements ThemeColors {
  BuildContext context;

  // constructor which takes context
  AppColors(this.context);

  bool get isDark => Theme.of(context).brightness == Brightness.dark;

  // implement all overrides by checking which theme is active

  @override
  Color get primaryDark => isDark ? _darkColors.primaryDark : _lightColors.primaryDark;
  @override
  Color get primaryLight => isDark ? _darkColors.primaryLight : _lightColors.primaryLight;
  @override
  Color get primary => isDark ? _darkColors.primary : _lightColors.primary;


  @override
  Color get background => isDark ? _darkColors.background : _lightColors.background;

  @override
  Color get black => isDark ? _darkColors.black : _lightColors.black;

  @override
  Color get error => isDark ? _darkColors.error : _lightColors.error;

  @override
  Color get errorDark => isDark ? _darkColors.errorDark : _lightColors.errorDark;

  @override
  Color get errorLight => isDark ? _darkColors.errorLight : _lightColors.errorLight;

  @override
  Color get grey100 => isDark ? _darkColors.grey100 : _lightColors.grey100;

  @override
  Color get grey200 => isDark ? _darkColors.grey200 : _lightColors.grey200;

  @override
  Color get grey300 => isDark ? _darkColors.grey300 : _lightColors.grey300;

  @override
  Color get grey400 => isDark ? _darkColors.grey400 : _lightColors.grey400;

  @override
  Color get grey50 => isDark ? _darkColors.grey50 : _lightColors.grey50;

  @override
  Color get grey500 => isDark ? _darkColors.grey500 : _lightColors.grey500;

  @override
  Color get grey600 => isDark ? _darkColors.grey600 : _lightColors.grey600;

  @override
  Color get grey700 => isDark ? _darkColors.grey700 : _lightColors.grey700;

  @override
  Color get grey800 => isDark ? _darkColors.grey800 : _lightColors.grey800;

  @override
  Color get grey900 => isDark ? _darkColors.grey900 : _lightColors.grey900;

  @override
  Color get inverseBackground => isDark ? _darkColors.inverseBackground : _lightColors.inverseBackground;

  @override
  // TODO: implement onBackground
  Color get onBackground => isDark ? _darkColors.onBackground : _lightColors.onBackground;

  @override
  // TODO: implement onError
  Color get onError => isDark ? _darkColors.onError : _lightColors.onError;

  @override
  Color get onInverseBackground => isDark ? _darkColors.onInverseBackground : _lightColors.onInverseBackground;

  @override
  // TODO: implement onPrimary
  Color get onPrimary => isDark ? _darkColors.onPrimary : _lightColors.onPrimary;

  @override
  // TODO: implement onSecondaryDark
  Color get onSecondaryDark => isDark ? _darkColors.onSecondaryDark : _lightColors.onSecondaryDark;

  @override
  // TODO: implement onSecondaryLight
  Color get onSecondaryLight => isDark ? _darkColors.onSecondaryLight : _lightColors.onSecondaryLight;

  @override
  // TODO: implement onSuccess
  Color get onSuccess => isDark ? _darkColors.onSuccess : _lightColors.onSuccess;

  @override
  // TODO: implement onWarning
  Color get onWarning => isDark ? _darkColors.onWarning : _lightColors.onWarning;

  @override
  // TODO: implement secondary100
  Color get secondary100 => isDark ? _darkColors.secondary100 : _lightColors.secondary100;

  @override
  // TODO: implement secondary200
  Color get secondary200 => isDark ? _darkColors.secondary200 : _lightColors.secondary200;

  @override
  // TODO: implement secondary300
  Color get secondary300 => isDark ? _darkColors.secondary300 : _lightColors.secondary300;

  @override
  // TODO: implement secondary400
  Color get secondary400 => isDark ? _darkColors.secondary400 : _lightColors.secondary400;

  @override
  // TODO: implement success
  Color get success => isDark ? _darkColors.success : _lightColors.success;

  @override
  // TODO: implement successDark
  Color get successDark => isDark ? _darkColors.successDark : _lightColors.successDark;

  @override
  // TODO: implement successLight
  Color get successLight => isDark ? _darkColors.successLight : _lightColors.successLight;

  @override
  // TODO: implement warning
  Color get warning => isDark ? _darkColors.warning : _lightColors.warning;

  @override
  // TODO: implement warningDark
  Color get warningDark => isDark ? _darkColors.warningDark : _lightColors.warningDark;

  @override
  // TODO: implement warningLight
  Color get warningLight => isDark ? _darkColors.warningLight : _lightColors.warningLight;

  @override
  // TODO: implement white
  Color get white => isDark ? _darkColors.white : _lightColors.white;

  @override
  // TODO: implement secondary
  Color get secondary => isDark ? _darkColors.secondary : _lightColors.secondary;

}
