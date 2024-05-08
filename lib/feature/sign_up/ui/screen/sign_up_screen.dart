import 'package:atom/core/theming/colors.dart';
import 'package:atom/core/theming/styles_manager.dart';
import 'package:flutter/material.dart';

import '../widget/sign_up_form.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Create Account',
                  style: getBoldStyle(color: ColorManger.black),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  'Join HeartCheck today and unlock a world of heart health insights!\nSign up now and discover all the features our app has to offer. We\'re thrilled to have you join our community dedicated to keeping hearts healthy!',
                  style:
                      getRegularStyle(color: ColorManger.black, fontSize: 13),
                ),
                const SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    SignUpForm(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
