import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../data/login_repo.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
 final LoginRepo _loginRepo;

  LoginCubit(this._loginRepo) : super(const LoginState(status: LoginStatus.initial));

  void userLogin({required String email, required String password}) async {
    emit( const LoginState(status: LoginStatus.loading));
    try {
      await _loginRepo.login(email, password);
      emit(const LoginState(status: LoginStatus.success));
    } catch (e) {
      emit(const LoginState(status: LoginStatus.failure, errorMessage: 'Invalid email or password.'));
    }
  }
}