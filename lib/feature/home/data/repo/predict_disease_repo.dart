import 'package:atom/core/networking/api_services.dart';

import '../../../../core/helper/app_constants.dart';
import '../model/predict_disease_model.dart';

class PredictDiseaseRepo {
  Future<PredictDiseaseModel> predictData({
    required Map<String, dynamic> data,
  }) async {
    try {
      final response = await ApiServices.postData(
          urll: '${AppConstants.modelbaseurl}/${AppConstants.predict}',
          data: data);
      return PredictDiseaseModel.fromJson(response.data);
    } catch (error) {
      throw Exception('Failed to predict data: $error');
    }
  }
}
