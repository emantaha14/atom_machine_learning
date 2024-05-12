import 'package:atom/core/helper/extension.dart';
import 'package:atom/core/routing/routes.dart';
import 'package:atom/feature/sign_up/logic/sign_up_cubit.dart';
import 'package:atom/feature/sign_up/logic/sign_up_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../../../core/helper/app_regx.dart';
import '../../../../core/widget/app_text_field.dart';
import '../../../../core/widget/get_started_button.dart';
import '../../data/repo/sign_up_repo.dart';

class SignUpForm extends StatelessWidget {
  SignUpForm({super.key});
  final formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final phoneController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignUpCubit(SignUpRepo()),
      child: BlocConsumer<SignUpCubit, SignUpState>(
        listener: (context, state) {
          if (state is SignUpSuccess) {
            Fluttertoast.showToast(
                msg: 'Sign Up Successfully',
                toastLength: Toast.LENGTH_LONG,
                gravity: ToastGravity.BOTTOM,
                timeInSecForIosWeb: 5,
                backgroundColor: const Color.fromARGB(255, 1, 85, 18),
                textColor: Colors.white,
                fontSize: 16.0);
            context.pushNamed(Routes.login);
          }
          if (state is SignUpFailure) {
            Fluttertoast.showToast(
                msg: 'Error',
                toastLength: Toast.LENGTH_LONG,
                gravity: ToastGravity.BOTTOM,
                timeInSecForIosWeb: 5,
                backgroundColor: const Color.fromARGB(255, 85, 1, 1),
                textColor: Colors.white,
                fontSize: 16.0);
          }
        },
        builder: (context, state) {
          return Form(
            key: formKey,
            child: Column(
              children: [
                AppTextFormField(
                  hintText: 'Name',
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a valid name';
                    }
                  },
                  controller: nameController,
                ),
                const SizedBox(height: 16),
                AppTextFormField(
                  keyboardType: TextInputType.phone,
                  hintText: 'Phone number',
                  validator: (value) {
                    if (value == null ||
                        value.isEmpty ||
                        !AppRegex.isPhoneNumberValid(value)) {
                      return 'Please enter a valid phone number';
                    }
                  },
                  controller: phoneController,
                ),
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
                const SizedBox(height: 18),
                AppTextFormField(
                  controller: confirmPasswordController,
                  hintText: 'Password Confirmation',
                  isObscureText: true,
                  suffixIcon: GestureDetector(
                    onTap: () {},
                    child: const Icon(Icons.visibility_off),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a valid password';
                    }
                  },
                ),
                const SizedBox(height: 40),
                state is SignUpLoading
                    ? const Center(child: CircularProgressIndicator())
                    : Align(
                        alignment: Alignment.center,
                        child: GetStartedButton(
                          onPressed: () {
                            if (formKey.currentState!.validate()) {
                              context.read<SignUpCubit>().signUp(
                                  name: nameController.text,
                                  email: emailController.text,
                                  password: passwordController.text,
                                  passwordConfirm:
                                      confirmPasswordController.text,
                                  phone: phoneController.text);
                            }
                          },
                          text: 'Sign Up',
                        ),
                      ),
                const SizedBox(height: 24),
              ],
            ),
          );
        },
      ),
    );
  }
}
