import 'package:flutter/material.dart';

import 'font_manager.dart';

TextStyle _getTextStyle(double fontSize, FontWeight fontWeight, Color color){
  return TextStyle(
      fontWeight: fontWeight,
      fontSize: fontSize,
  );
}

// regular style
TextStyle getRegularStyle({double fontSize = FontSizeManager.s20, required Color color, }){
  return _getTextStyle(fontSize, FontWeightManager.regular, color);
}

// regular style
TextStyle getMediumStyle({double fontSize = FontSizeManager.s12, required Color color, }){
  return _getTextStyle(fontSize, FontWeightManager.medium, color);
}

// regular style
TextStyle getLightStyle({double fontSize = FontSizeManager.s12, required Color color, }){
  return _getTextStyle(fontSize, FontWeightManager.light, color);
}

// regular style
TextStyle getBoldStyle({double fontSize = FontSizeManager.s30, required Color color, }){
  return _getTextStyle(fontSize, FontWeightManager.bold, color);
}

// regular style
TextStyle getSemiBoldStyle({double fontSize = FontSizeManager.s12, required Color color, }){
  return _getTextStyle(fontSize, FontWeightManager.semiBold, color);
}
