import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'colors.dart';
import 'font_weight_helper.dart';

class TextStyles {
  static TextStyle font22Black700Weight = TextStyle(
    fontSize: 22.sp,
    fontWeight: FontWeight.w700,
    color: Colors.black,
  );
  static TextStyle font18Black700Weight = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeight.w700,
    color: Colors.black,
  );
  static TextStyle font18BlackSemiBold = TextStyle(
    fontSize: 15.sp,
    fontWeight: FontWeightHelper.semiBold,
    color: Colors.black,
  );

  static TextStyle font32BlueBold = TextStyle(
    fontSize: 32.sp,
    fontWeight: FontWeight.bold,
    color: ColorManger.mainBlue,
  );
  static TextStyle font24BlueBold = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeightHelper.bold,
    color: ColorManger.mainBlue,
  );
  static TextStyle font14SemiBlueBold = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.semiBold,
    color: ColorManger.mainBlue,
  );
  static TextStyle font12BlueRegular = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeightHelper.regular,
    color: ColorManger.mainBlue,
  );

  static TextStyle font13GrayRegular = TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeight.normal,
    color: ColorManger.gray,
  );
  static TextStyle font14GrayRegular = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.regular,
    color: ColorManger.gray,
  );
  static TextStyle font11DarkBlueRegular = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.regular,
    color: ColorManger.darkBlue,
  );

  static TextStyle font14LightGrayRegular = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.regular,
    color: ColorManger.lightgray,
  );
  static TextStyle font14DarkBlueMedium = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.semiBold,
    color: ColorManger.darkBlue,
  );

  static TextStyle font16WhiteSemiBold = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
    color: Colors.white,
  );

  static TextStyle font16BlackBold = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.bold,
    color: Colors.black,
  );
}
