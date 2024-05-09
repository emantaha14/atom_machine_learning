import 'package:atom/feature/login/data/login_model.dart';

import 'network.dart';

class LoginRepo {
  final AppServiceClient _appServiceClient;

  LoginRepo(this._appServiceClient);

  Future<LoginModel> login(String email, String password) async {
    final login = await _appServiceClient.login(email, password);
    return login;
  }
}
