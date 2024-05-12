import 'package:atom/feature/home/data/model/predict_disease_model.dart';

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
