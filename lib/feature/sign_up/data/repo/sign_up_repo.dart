import 'package:atom/core/networking/api_services.dart';

import '../../../../core/helper/app_constants.dart';
import '../model/sign_up_model.dart';

class SignUpRepo {
  Future<SignUpModel> signUp({
    required Map<String, dynamic> data,
  }) async {
    final response = await ApiServices.postData(
        urll: '${AppConstants.baseUrl}${AppConstants.signup}', data: data);

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
