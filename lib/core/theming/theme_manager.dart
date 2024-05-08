import 'package:atom/core/theming/styles_manager.dart';
import 'package:flutter/material.dart';

import 'colors.dart';
import 'font_weight_helper.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
    textTheme: TextTheme(
      displayLarge: getBoldStyle(
        color: ColorManger.grey,
      ),
      headlineLarge: getSemiBoldStyle(
          color: ColorManger.grey, fontSize: FontSizeManager.s16),
      headlineMedium: getRegularStyle(
          color: ColorManger.black, fontSize: FontSizeManager.s20),
      bodySmall: getRegularStyle(color: ColorManger.grey, fontSize: 12),
    ),
    useMaterial3: true,
  );
}
