import 'text_theme.dart';
import 'package:flutter/material.dart';
import 'colors/colors_interface.dart';

TextTheme textTheme(TextTheme textTheme) {
  return TextTheme(
    headline1: AppTextStyle(textStyle: textTheme.headline1),
    headline2: AppTextStyle(textStyle: textTheme.headline2),
    headline3: AppTextStyle(textStyle: textTheme.headline3),
    headline4: AppTextStyle(textStyle: textTheme.headline4),
    headline5: AppTextStyle(textStyle: textTheme.headline5),
    headline6: AppTextStyle(textStyle: textTheme.headline6),
    subtitle1: AppTextStyle(textStyle: textTheme.subtitle1),
    subtitle2: AppTextStyle(textStyle: textTheme.subtitle2),
    bodyText1: AppTextStyle(textStyle: textTheme.bodyText1),
    bodyText2: AppTextStyle(textStyle: textTheme.bodyText2),
    caption: AppTextStyle(textStyle: textTheme.caption),
    button: AppTextStyle(textStyle: textTheme.button),
    overline: AppTextStyle(textStyle: textTheme.overline),
  );
}

class CustomTheme {
  static ThemeData create(ThemeColors colors, Brightness brightness) {
    var buttonStyle = AppTextStyle(
      color: colors.onPrimary,
      fontWeight: FontWeight.bold,
      fontSize: 16,
    );

    TextTheme appTextTheme = textTheme(
      brightness == Brightness.light
          ? ThemeData.light().textTheme.copyWith(button: buttonStyle)
          : ThemeData.dark().textTheme.copyWith(button: buttonStyle),
    );

    return ThemeData(
      primaryColor: colors.primary,
      primaryColorDark: colors.primaryDark,
      primaryColorLight: colors.primaryLight,
      brightness: brightness,
      scaffoldBackgroundColor: colors.background,
      canvasColor: colors.background,
      appBarTheme: AppBarTheme(
        backgroundColor: colors.background,
        iconTheme: IconThemeData(color: colors.onBackground),
        titleTextStyle: AppTextStyle(
          color: colors.onBackground,
          fontSize: 14.0,
        ),
        elevation: 0.0,
      ),
      textTheme: appTextTheme,
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          backgroundColor: colors.primary,
          primary: colors.onPrimary,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          minimumSize: const Size(200, 50),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          primary: colors.primary,
          shape: const StadiumBorder(),
          side: BorderSide(color: colors.secondary, width: 1),
          minimumSize: const Size(200, 50),
        ),
      ),
      snackBarTheme: SnackBarThemeData(
        backgroundColor: colors.inverseBackground,
      ),
      inputDecorationTheme: InputDecorationTheme(
          contentPadding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          border: const OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: colors.primary,
            ),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: colors.errorDark,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: colors.error,
            ),
          ),
          errorStyle: AppTextStyle(
            color: colors.error,
          )),
      colorScheme: ColorScheme.fromSwatch().copyWith(
        brightness: brightness,
        secondary: colors.secondary,
        primary: colors.primary,
        background: colors.background,
        onBackground: colors.onBackground,
        inverseSurface: colors.inverseBackground,
        onInverseSurface: colors.onInverseBackground,
        error: colors.error,
        onError: colors.onError,
        onPrimary: colors.onPrimary,
        onSecondary: colors.onSecondaryLight,
        onSurface: colors.onBackground,
        surface: colors.background,

      ),
    );
  }
}
