import 'dart:convert';

BackModel backModelFromJson(String str) => BackModel.fromJson(json.decode(str));

String backModelToJson(BackModel data) => json.encode(data.toJson());

class BackModel {
  final String sex;
  final String ageCategory;
  final double bmi;
  final String genHealth;
  final String physicalActivity;
  final double physicalHealth;
  final double mentalHealth;
  final double sleepTime;
  final String diffWalking;
  final String smoking;
  final String alcoholDrinking;
  final String kidneyDisease;
  final String asthma;
  final String skinCancer;
  final String stroke;
  final String diabetic;
  final String user;
  final double result;

  BackModel({
    required this.sex,
    required this.ageCategory,
    required this.bmi,
    required this.genHealth,
    required this.physicalActivity,
    required this.physicalHealth,
    required this.mentalHealth,
    required this.sleepTime,
    required this.diffWalking,
    required this.smoking,
    required this.alcoholDrinking,
    required this.kidneyDisease,
    required this.asthma,
    required this.skinCancer,
    required this.stroke,
    required this.diabetic,
    required this.user,
    required this.result,
  });

  factory BackModel.fromJson(Map<String, dynamic> json) => BackModel(
        sex: json["Sex"] ?? "",
        ageCategory: json["AgeCategory"] ?? "",
        bmi: json["BMI"]?.toDouble() ?? 0,
        genHealth: json["GenHealth"] ?? "",
        physicalActivity: json["PhysicalActivity"] ?? "",
        physicalHealth: json["PhysicalHealth"] ?? 0,
        mentalHealth: json["MentalHealth"] ?? 0,
        sleepTime: json["SleepTime"] ?? 0,
        diffWalking: json["DiffWalking"] ?? "",
        smoking: json["Smoking"] ?? "",
        alcoholDrinking: json["AlcoholDrinking"] ?? "",
        kidneyDisease: json["KidneyDisease"] ?? "",
        asthma: json["Asthma"] ?? "",
        skinCancer: json["SkinCancer"] ?? "",
        stroke: json["Stroke"] ?? "",
        diabetic: json["Diabetic"] ?? "",
        user: json["user"] ?? "",
        result: json["result"] ?? 0,
      );

  Map<String, dynamic> toJson() => {
        "Sex": sex,
        "AgeCategory": ageCategory,
        "BMI": bmi,
        "GenHealth": genHealth,
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
        "Diabetic": diabetic,
        "user": user,
        "result": result,
      };
}
