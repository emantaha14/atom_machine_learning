import 'package:atom/core/helper/extension.dart';
import 'package:flutter/material.dart';

import '../../../../core/helper/app_regx.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/widget/app_text_field.dart';
import '../../../../core/widget/get_started_button.dart';

class LoginForm extends StatelessWidget {
  LoginForm({super.key});
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [

          const SizedBox(height: 18),
          AppTextFormField(
            hintText: 'Email',
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isEmailValid(value)) {
                return 'Please enter a valid email';
              }
            },
            controller: emailController,
          ),
          const SizedBox(height: 18),
          AppTextFormField(
            controller: passwordController,
            hintText: 'Password',
            isObscureText: true,
            suffixIcon: GestureDetector(
              onTap: () {},
              child: const Icon(
                Icons.visibility_off,
              ),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a valid password';
              }
            },
          ),
          const SizedBox(height: 40),
          Align(
            alignment: Alignment.center,
            child: GetStartedButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    context.pushNamed(Routes.homeScreen);
                  }
                },
                text: 'Login'),
          ),
          const SizedBox(height: 24),
        ],
      ),
    );
  }
}
