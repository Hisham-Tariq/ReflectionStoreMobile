export 'colors/colors.dart';
export 'theme_controller.dart';
import 'package:flutter/material.dart';
import 'theme_data.dart';

import 'theme.dart';

ThemeData lightTheme = CustomTheme.create(LightThemeColors(), Brightness.light);
ThemeData darkTheme = CustomTheme.create(DarkThemeColors(), Brightness.dark);
