import 'package:atom/feature/sign_up/data/model/sign_up_model.dart';

abstract class SignUpState {}

class SignUpInitial extends SignUpState {}

class SignUpLoading extends SignUpState {}

class SignUpSuccess extends SignUpState {
  final SignUpModel signUpModel;

  SignUpSuccess({required this.signUpModel});
}

class SignUpFailure extends SignUpState {}
