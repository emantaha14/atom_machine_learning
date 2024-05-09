import 'package:atom/core/helper/extension.dart';
import 'package:flutter/material.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles_manager.dart';
import '../widget/login_form.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Center(
            child: Padding(
              padding:
              const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Text(
                        'Login',
                        style: getBoldStyle(
                            fontSize: 40, color: ColorManger.orange),
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Center(
                      child: Text(
                        'Hello, welcome back',
                        style: getRegularStyle(
                            color: ColorManger.black, fontSize: 20),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    LoginForm(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'don\'t have an count?',
                          style: getRegularStyle(
                              color: ColorManger.black, fontSize: 17),
                        ),
                        TextButton(
                          onPressed: () {
                            context.pushReplacementNamed(Routes.signup);
                          },
                          child: Text(
                            'sing up',
                            style: getRegularStyle(
                                color: ColorManger.orange, fontSize: 17),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
