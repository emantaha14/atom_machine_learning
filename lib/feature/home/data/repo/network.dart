import 'package:atom/feature/home/data/model/model_for_backmodel.dart';
import 'package:dio/dio.dart';

import '../../../../core/networking/api_services.dart';
import 'model_info_request.dart';

class BackModelService {


  Future<BackModelResponse> modelInformation(ModelInfRequest modelInfRequest) async {
    String url = 'examines';
    final Response response = await ApiServices.postData(urll: url, data: {
      "Sex": modelInfRequest.Sex,
      "AgeCategory": modelInfRequest.AgeCategory,
      "BMI": modelInfRequest.BMI,
      "GenHealth": modelInfRequest.GenHealth,
      "PhysicalActivity": modelInfRequest.PhysicalActivity,
      "PhysicalHealth": modelInfRequest.PhysicalHealth,
      "MentalHealth": modelInfRequest.MentalHealth,
      "SleepTime": modelInfRequest.SleepTime,
      "DiffWalking": modelInfRequest.DiffWalking,
      "Smoking": modelInfRequest.Smoking,
      "AlcoholDrinking": modelInfRequest.AlcoholDrinking,
      "KidneyDisease": modelInfRequest.KidneyDisease,
      "Asthma": modelInfRequest.Asthma,
      "SkinCancer": modelInfRequest.SkinCancer,
      "Stroke": modelInfRequest.Stroke,
      "Diabetic": modelInfRequest.Diabetic,
      "user": modelInfRequest.user,
      "result": modelInfRequest.result,
    });

    if (response.statusCode == 200 || response.statusCode ==201) {
      print(response.data);
      return BackModelResponse.fromJson(response.data);
    } else {
      throw Exception(
          'Failed to login: Server returned ${response.statusCode}');
    }
  }
}
