class PredictDiseaseModel {
  double? classifier;

  PredictDiseaseModel({this.classifier});

  PredictDiseaseModel.fromJson(Map<String, dynamic> json) {
    classifier = json['classifier'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['classifier'] = classifier;
    return data;
  }
}
