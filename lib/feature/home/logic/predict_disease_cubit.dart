import 'dart:developer';

import 'package:atom/feature/home/data/repo/predict_disease_repo.dart';
import 'package:bloc/bloc.dart';

import 'predict_disease_state.dart';

class PredictDiseaseCubit extends Cubit<PredictDiseaseState> {
  PredictDiseaseCubit(this.predictDiseaseRepo) : super(PredictDiseaseInitial());
  final PredictDiseaseRepo predictDiseaseRepo;

  void getPredictDisease(
      {required String sex,
      required String age,
      required double bmi,
      required String generaHealth,
      required String physicalActivity,
      required double physicalHealth,
      required double mentalHealth,
      required double sleepTime,
      required String diffWalking,
      required String smoking,
      required String alcoholDrinking,
      required String kidneyDisease,
      required String asthma,
      required String skinCancer,
      required String stroke,
      required String diabetic}) async {
    emit(PredictDiseaseLoading());
    await predictDiseaseRepo.predictData(data: {
      "Sex": sex,
      "AgeCategory": age,
      "BMI": bmi,
      "GenHealth": generaHealth,
      "PhysicalActivity": physicalActivity,
      "PhysicalHealth": physicalHealth,
      "MentalHealth": mentalHealth,
      "SleepTime": sleepTime,
      "DiffWalking": diffWalking,
      "Smoking": smoking,
      "AlcoholDrinking": alcoholDrinking,
      "KidneyDisease": kidneyDisease,
      "Asthma": asthma,
      "SkinCancer": skinCancer,
      "Stroke": stroke,
      "Diabetic": diabetic
    }).then((value) {
      log(value.classifier.toString());
      emit(PredictDiseaseSuccess(predictDiseaseModel: value));
    }).catchError((error) {
      log(error.toString());
      emit(PredictDiseaseFailure(error: error));
    });
  }
}
