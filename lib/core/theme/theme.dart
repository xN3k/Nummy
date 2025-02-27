import 'package:flutter/material.dart';
import 'package:nummy/core/theme/app_palette.dart';

class AppTheme {
  static _border([Color color = AppPalette.accentColor]) => OutlineInputBorder(
    borderRadius: BorderRadius.circular(40),
    borderSide: BorderSide.none,
  );
  static final lightThemeMode = ThemeData.light().copyWith(
    scaffoldBackgroundColor: AppPalette.backgroundColor,
    appBarTheme: AppBarTheme(backgroundColor: AppPalette.backgroundColor),

    inputDecorationTheme: InputDecorationTheme(
      contentPadding: const EdgeInsets.all(24.0),
      border: _border(),
      enabledBorder: _border(),
      errorBorder: _border(AppPalette.errorColor),
      filled: true,
      fillColor: AppPalette.fillColor,
      hintStyle: TextStyle(
        color: AppPalette.neutralTextColor,
        fontWeight: FontWeight.w600,
      ),
    ),
  );
}
