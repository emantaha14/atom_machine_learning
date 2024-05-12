import 'package:atom/feature/home/data/model/predict_disease_model.dart';

import '../data/model/model_for_backmodel.dart';

abstract class PredictDiseaseState {}

class PredictDiseaseInitial extends PredictDiseaseState {}

class PredictDiseaseLoading extends PredictDiseaseState {}

class PredictDiseaseSuccess extends PredictDiseaseState {
  final PredictDiseaseModel predictDiseaseModel;

  PredictDiseaseSuccess({required this.predictDiseaseModel});
}

class PredictDiseaseFailure extends PredictDiseaseState {
  final String error;

  PredictDiseaseFailure({required this.error});
}

class BackModelInfoInitialState extends PredictDiseaseState {}

class BackModelInfoLoadingState extends PredictDiseaseState {}

class BackModelInfoSuccessState extends PredictDiseaseState {
  final BackModelResponse backModelResponse;

  BackModelInfoSuccessState({required this.backModelResponse});
}

class BackModelInfoFailureState extends PredictDiseaseState {
  final String error;

  BackModelInfoFailureState({required this.error});
}