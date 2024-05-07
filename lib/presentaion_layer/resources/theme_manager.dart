import 'package:atom/presentaion_layer/resources/styles_manager.dart';
import 'package:flutter/material.dart';
import 'color_manager.dart';
import 'font_manager.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
      textTheme: TextTheme(
        displayLarge: getBoldStyle(
            color: ColorManager.grey,),
        headlineLarge: getSemiBoldStyle(
            color: ColorManager.grey, fontSize: FontSizeManager.s16),
        headlineMedium: getRegularStyle(color:ColorManager.black, fontSize: FontSizeManager.s20),
        bodySmall: getRegularStyle(color: ColorManager.grey),
      ),
    useMaterial3: true,
  );
}
