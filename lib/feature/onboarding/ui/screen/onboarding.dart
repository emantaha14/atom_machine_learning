import 'package:atom/core/helper/extension.dart';
import 'package:atom/core/routing/routes.dart';
import 'package:atom/core/theming/colors.dart';
import 'package:atom/core/theming/styles_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widget/custom_text.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
          'Heart Disease Prediction',
          style: getBoldStyle(color: ColorManger.black),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
          ),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                SizedBox(
                  height: 20.h,
                ),
                Image.asset(
                  'assets/image/doc.png',
                  width: 200.w,
                  height: 400.h,
                ),
                CustomText(
                  text:
                      'Are you wondering about the condition of your heart? This app will help you to diagnose it!',
                  textStyle: getMediumStyle(color: ColorManger.grey),
                ),
                SizedBox(
                  height: 20.h,
                ),
                const CustomText(
                    text:
                        'Did you know that machine learning models can help you predict heart disease pretty accurately? In this app, you can estimate your chance of heart disease (yes/no) in seconds! \n '),
                const CustomText(
                    text:
                        'To predict your heart disease status, simply follow the steps bellow: '),
                SizedBox(
                  height: 20.h,
                ),
                const CustomText(
                    text:
                        '1. Enter the parameters that best describe you; \n2. Press the "Predict" button and wait for the result.'),
                SizedBox(
                  height: 20.h,
                ),
                const CustomText(
                    text:
                        'Keep in mind that this results is not equivalent to a medical diagnosis! This model would never be adopted by health care facilities because of its less than perfect accuracy, so if you have any problems, consult a human doctor.'),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.pushNamed(Routes.homeScreen);
        },
        child: const Icon(
          Icons.arrow_circle_right_sharp,
          color: ColorManger.orange,
        ),
      ),
    );
  }
}
