part of 'login_cubit.dart';

enum LoginStatus { initial, loading, success, failure }

@immutable
class LoginState {
  final LoginStatus status;
  final String? errorMessage;
  const LoginState({required this.status, this.errorMessage});
}