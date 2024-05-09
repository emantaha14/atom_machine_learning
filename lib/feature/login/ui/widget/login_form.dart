import 'package:atom/core/helper/extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/helper/app_regx.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/widget/app_text_field.dart';
import '../../../../core/widget/get_started_button.dart';
import '../../data/login_repo.dart';
import '../../data/network.dart';
import '../../logic/login_cubit.dart';

class LoginForm extends StatelessWidget {
  final LoginRepo _loginRepo = LoginRepo(AppServiceClient());

  LoginForm({super.key});

  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => LoginCubit(_loginRepo),
        child: BlocConsumer<LoginCubit, LoginState>(listener: (context, state) {
          if (state.status == LoginStatus.success) {
            print(state.status);
            context.pushReplacementNamed(Routes.homeScreen);
          } else if (state.status == LoginStatus.failure) {
            print(state.status);
            WidgetsBinding.instance.addPostFrameCallback((_) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(state.errorMessage ?? 'Login failed.'),
                ),
              );
            });
          }
        }, builder: (context, state) {
          print(state.status);
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
                    if (value == null ||
                        value.isEmpty ||
                        !AppRegex.isPasswordValid(value)) {
                      return 'Please enter a valid password';
                    }
                  },
                ),
                const SizedBox(height: 40),
                Align(
                  alignment: Alignment.center,
                  child: GetStartedButton(
                      onPressed: () {
                        context.read<LoginCubit>().userLogin(
                            email: emailController.text,
                            password: passwordController.text);
                      },
                      text: 'Login'),
                ),
                const SizedBox(height: 24),
              ],
            ),
          );
        }));
  }
}
