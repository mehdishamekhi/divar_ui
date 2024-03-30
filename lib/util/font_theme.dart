import 'package:divar_ui/util/colors.dart';
import 'package:flutter/material.dart';

class CustomTheme {
  static final ThemeData defaultTheme = ThemeData(
    textTheme: const TextTheme(
      titleLarge: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: AppColor.black,
      ),
      displayMedium: TextStyle(
        fontSize: 16,
        color: AppColor.black,
      ),
      displayLarge: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.bold,
        color: AppColor.black,
      ),
      bodyMedium: TextStyle(
        fontSize: 14,
        color: AppColor.grey,
      ),
      titleMedium: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.bold,
        color: AppColor.grey,
      ),
      bodySmall: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: AppColor.grey,
      ),
      headlineMedium: TextStyle(
        fontSize: 16,
        color: AppColor.grey,
      ),
      labelLarge: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: AppColor.white,
      ),
      bodyLarge: TextStyle(
        fontSize: 16,
        color: AppColor.white,
      ),
      titleSmall: TextStyle(
        fontSize: 12,
        color: AppColor.white,
      ),
      labelMedium: TextStyle(
        fontSize: 16,
        color: AppColor.red,
      ),
      labelSmall: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.bold,
        color: AppColor.red,
      ),
      displaySmall: TextStyle(
        fontSize: 12,
        color: AppColor.red,
      ),
      headlineLarge: TextStyle(
        fontSize: 14,
        color: AppColor.red,
      ),
      headlineSmall: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: AppColor.red,
      ),
    ),
    fontFamily: 'shabnam',
  );
}
