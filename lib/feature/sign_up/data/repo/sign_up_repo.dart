import 'package:atom/core/networking/api_services.dart';
import 'package:dio/dio.dart';

import '../../../../core/helper/app_constants.dart';
import '../model/sign_up_model.dart';

class SignUpRepo {
  final ApiServices apiServices = ApiServices(dio: Dio())..init();

  Future<SignUpModel> signUp({
    required Map<String, dynamic> data,
  }) async {
    final response =
        await apiServices.postData(urll: AppConstants.signup, data: data);

    try {
      if (response.statusCode == 200 || response.statusCode == 201) {
        return SignUpModel.fromJson(response.data);
      } else {
        throw Exception('Failed to load Register data');
      }
    } catch (e) {
      throw Exception('Failed to load Register data: $e');
    }
  }
}
