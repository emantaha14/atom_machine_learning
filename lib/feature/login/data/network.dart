import 'dart:convert';

import 'package:atom/feature/login/data/login_model.dart';
import 'package:dio/dio.dart';

import '../../../core/networking/api_services.dart';

class LoginService {
  final ApiServices _apiServices = ApiServices(dio: Dio())..init();

  Future<LoginModel> login(String email, String password) async {
      String url = 'users/login';
      final Response response = await _apiServices.postData(urll: url, data: {
        "email": email,
        "password": password,
      });

      if (response.statusCode == 200) {
        print(response.data);
        return LoginModel.fromJson(response.data);
      } else {

        throw Exception('Failed to login: Server returned ${response.statusCode}');
      }
  }
}

