import 'package:atom/feature/home/data/model/model_for_backmodel.dart';
import 'package:atom/feature/home/data/repo/network.dart';

import 'model_info_request.dart';

class BackModelRepo {
  final BackModelService _backModelService;

  BackModelRepo(this._backModelService);

  Future<BackModelResponse> modelInformation(ModelInfRequest modelInfRequest) async {
    final modelInformation = await _backModelService.modelInformation(modelInfRequest);
    return modelInformation;
  }
}
