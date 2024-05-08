import 'package:flutter/material.dart';

import 'font_weight_helper.dart';

TextStyle _getTextStyle(double fontSize, FontWeight fontWeight, Color color) {
  return TextStyle(
    fontWeight: fontWeight,
    fontSize: fontSize,
    color: color,
  );
}

// regular style
TextStyle getRegularStyle({
  double fontSize = FontSizeManager.s20,
  required Color color,
}) {
  return _getTextStyle(fontSize, FontWeightHelper.regular, color);
}

// regular style
TextStyle getMediumStyle({
  double fontSize = FontSizeManager.s12,
  required Color color,
}) {
  return _getTextStyle(fontSize, FontWeightHelper.medium, color);
}

// regular style
TextStyle getLightStyle({
  double fontSize = FontSizeManager.s12,
  required Color color,
}) {
  return _getTextStyle(fontSize, FontWeightHelper.light, color);
}

// regular style
TextStyle getBoldStyle({
  double fontSize = FontSizeManager.s30,
  required Color color,
}) {
  return _getTextStyle(fontSize, FontWeightHelper.bold, color);
}

// regular style
TextStyle getSemiBoldStyle({
  double fontSize = FontSizeManager.s12,
  required Color color,
}) {
  return _getTextStyle(fontSize, FontWeightHelper.semiBold, color);
}
