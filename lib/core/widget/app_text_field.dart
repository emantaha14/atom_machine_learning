import 'package:atom/core/theming/styles_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theming/colors.dart';

class AppTextFormField extends StatelessWidget {
  const AppTextFormField({
    super.key,
    this.contentPadding,
    this.focusedBorder,
    this.enabledBorder,
    this.hintStyle,
    required this.hintText,
    this.isObscureText,
    this.suffixIcon,
    required this.controller,
    required this.validator,
    this.focusedErrorBorder,
    this.errorBorder,
    this.onFieldSubmitted,
    this.keyboardType,
  });
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final InputBorder? focusedErrorBorder;
  final InputBorder? errorBorder;
  final TextStyle? hintStyle;
  final String hintText;
  final bool? isObscureText;
  final Widget? suffixIcon;
  final TextEditingController controller;
  final Function(String?) validator;
  final void Function(String)? onFieldSubmitted;
  final TextInputType? keyboardType;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      onFieldSubmitted: onFieldSubmitted,
      controller: controller,
      decoration: InputDecoration(
          isDense: true,
          contentPadding: contentPadding ??
              EdgeInsets.symmetric(horizontal: 20.w, vertical: 17.h),
          focusedBorder: focusedBorder ??
              OutlineInputBorder(
                  borderSide:
                      const BorderSide(color: ColorManger.orange, width: 1),
                  borderRadius: BorderRadius.circular(16)),
          enabledBorder: enabledBorder ??
              OutlineInputBorder(
                borderSide: const BorderSide(color: ColorManger.grey, width: 1),
                borderRadius: BorderRadius.circular(16),
              ),
          errorBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.red,
              width: 1.3,
            ),
            borderRadius: BorderRadius.circular(16.0),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.red,
              width: 1.3,
            ),
            borderRadius: BorderRadius.circular(16.0),
          ),
          hintStyle: hintStyle ??
              getRegularStyle(color: ColorManger.black, fontSize: 15),
          hintText: hintText,
          suffixIcon: suffixIcon),
      obscureText: isObscureText ?? false,
      style: getMediumStyle(color: ColorManger.black, fontSize: 15),
      validator: (value) {
        return validator(value);
      },
    );
  }
}
