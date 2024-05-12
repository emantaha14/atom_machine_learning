import 'package:atom/core/helper/app_constants.dart';
import 'package:atom/feature/login/data/login_model.dart';
import 'package:dio/dio.dart';

import '../../../core/networking/api_services.dart';

class LoginService {
  Future<LoginModel> login(String email, String password) async {
    String url = 'login';
    final Response response =
        await ApiServices.postData(urll: '${AppConstants.baseUrl}/$url', data: {
      "email": email,
      "password": password,
    });

    if (response.statusCode == 200) {
      print(response.data);
      return LoginModel.fromJson(response.data);
    } else {
      throw Exception(
          'Failed to login: Server returned ${response.statusCode}');
    }
  }
}
