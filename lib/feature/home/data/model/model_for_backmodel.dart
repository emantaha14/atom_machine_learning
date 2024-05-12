import 'dart:convert';

BackModelResponse backModelFromJson(String str) => BackModelResponse.fromJson(json.decode(str));

String backModelToJson(BackModelResponse data) => json.encode(data.toJson());

class BackModelResponse {
  final String status;
  final BackModelData data;

  BackModelResponse({
    required this.status,
    required this.data,
  });

  factory BackModelResponse.fromJson(Map<String, dynamic> json) => BackModelResponse(
    status: json["status"],
    data: BackModelData.fromJson(json["data"]),
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "data": data.toJson(),
  };
}

class BackModelData {
  final DataData data;

  BackModelData({
    required this.data,
  });

  factory BackModelData.fromJson(Map<String, dynamic> json) => BackModelData(
    data: DataData.fromJson(json["data"]),
  );

  Map<String, dynamic> toJson() => {
    "data": data.toJson(),
  };
}

class DataData {
  final String sex;
  final double bmi;
  final String genHealth;
  final String physicalActivity;
  final int physicalHealth;
  final int mentalHealth;
  final int sleepTime;
  final String diffWalking;
  final String smoking;
  final String alcoholDrinking;
  final String kidneyDisease;
  final String asthma;
  final String skinCancer;
  final String stroke;
  final String diabetic;
  final int result;
  final String user;
  final String id;
  final DateTime createdAt;
  final DateTime updatedAt;
  final int v;

  DataData({
    required this.sex,
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
    required this.result,
    required this.user,
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    required this.v,
  });

  factory DataData.fromJson(Map<String, dynamic> json) => DataData(
    sex: json["Sex"],
    bmi: json["BMI"]?.toDouble(),
    genHealth: json["GenHealth"],
    physicalActivity: json["PhysicalActivity"],
    physicalHealth: json["PhysicalHealth"],
    mentalHealth: json["MentalHealth"],
    sleepTime: json["SleepTime"],
    diffWalking: json["DiffWalking"],
    smoking: json["Smoking"],
    alcoholDrinking: json["AlcoholDrinking"],
    kidneyDisease: json["KidneyDisease"],
    asthma: json["Asthma"],
    skinCancer: json["SkinCancer"],
    stroke: json["Stroke"],
    diabetic: json["Diabetic"],
    result: json["result"],
    user: json["user"],
    id: json["_id"],
    createdAt: DateTime.parse(json["createdAt"]),
    updatedAt: DateTime.parse(json["updatedAt"]),
    v: json["__v"],
  );

  Map<String, dynamic> toJson() => {
    "Sex": sex,
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
    "result": result,
    "user": user,
    "_id": id,
    "createdAt": createdAt.toIso8601String(),
    "updatedAt": updatedAt.toIso8601String(),
    "__v": v,
  };
}
