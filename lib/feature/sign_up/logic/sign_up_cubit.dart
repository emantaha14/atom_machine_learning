import 'package:atom/feature/sign_up/logic/sign_up_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../data/repo/sign_up_repo.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit(this.signUpRepo) : super(SignUpInitial());

  final SignUpRepo signUpRepo;

  Future<void> signUp({
    required String name,
    required String email,
    required String password,
    required String passwordConfirm,
    required String phone,
  }) async {
    emit(SignUpLoading());
    try {
      final data = await signUpRepo.signUp(data: {
        "name": name,
        "email": email,
        "password": password,
        "passwordConfirm": passwordConfirm,
        "phone": phone
      });
      print(data);
      emit(SignUpSuccess(signUpModel: data));
    } catch (error) {
      print(error);
      emit(SignUpFailure());
    }
  }
}
