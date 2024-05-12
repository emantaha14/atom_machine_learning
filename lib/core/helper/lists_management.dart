import 'package:dropdown_textfield/dropdown_textfield.dart';

class ListManager {
  static List<DropDownValueModel> smoking = const [
    DropDownValueModel(name: 'Never smoked', value: "value1"),
    DropDownValueModel(name: 'Former smoker', value: "value2"),
    DropDownValueModel(
        name: 'Current smoker - now smokes some days', value: "value3"),
    DropDownValueModel(
        name: 'Current smoker - now smokes everyday', value: "value4"),
  ];

  static List<DropDownValueModel> sex = const [
    DropDownValueModel(name: 'Male', value: "value7"),
    DropDownValueModel(name: 'Female', value: "value8"),
  ];

  static List<DropDownValueModel> ageCategory = const [
    DropDownValueModel(name: '18-24', value: "value9"),
    DropDownValueModel(name: '25-29', value: "value10"),
    DropDownValueModel(name: '30-34', value: "value11"),
    DropDownValueModel(name: '35-39', value: "value12"),
    DropDownValueModel(name: '40-44', value: "value13"),
    DropDownValueModel(name: '45-49', value: "value14"),
    DropDownValueModel(name: '50-54', value: "value15"),
    DropDownValueModel(name: '55-59', value: "value16"),
    DropDownValueModel(name: '60-64', value: "value17"),
    DropDownValueModel(name: '65-69', value: "value18"),
    DropDownValueModel(name: '70-74', value: "value19"),
    DropDownValueModel(name: '75-79', value: "value20"),
    DropDownValueModel(name: '80 or older', value: "value21"),
  ];
  static List<DropDownValueModel> bmi = const [
    DropDownValueModel(
        name: 'Normal weight (18.5 <= BMI < 25.0)', value: "value22"),
    DropDownValueModel(name: 'Obese (30.0 <= BMI < +Inf)', value: "value23"),
    DropDownValueModel(
        name: 'Overweight (25.0 <= BMI < 30.0)', value: "value24"),
    DropDownValueModel(name: 'Underweight (BMI < 18.5)', value: "value25"),
  ];

  static List<DropDownValueModel> generalHealth = const [
    DropDownValueModel(name: 'Excellent', value: "value26"),
    DropDownValueModel(name: 'Fair', value: "value27"),
    DropDownValueModel(name: 'Good', value: "value28"),
    DropDownValueModel(name: 'Poor', value: "value29"),
    DropDownValueModel(name: 'Very good', value: "value30"),
  ];

  static List<DropDownValueModel> general = const [
    DropDownValueModel(name: 'Yes', value: "value1"),
    DropDownValueModel(name: 'No', value: "value2"),
  ];

  static List<DropDownValueModel> cigarettes = const [
    DropDownValueModel(
        name: 'Never used e-cigarettes in my entire life', value: "value31"),
    DropDownValueModel(name: 'Not at all (right now)', value: "value32"),
    DropDownValueModel(name: 'Use them some days', value: "value33"),
    DropDownValueModel(name: 'Use them some days', value: "value34"),
  ];

  static List<DropDownValueModel> diabetes = const [
    DropDownValueModel(name: 'No', value: "value35"),
    DropDownValueModel(name: 'No', value: "value36"),
    DropDownValueModel(name: 'Borderline diabetes', value: "value37"),
    DropDownValueModel(name: 'Yes (during pregnancy)', value: "value38"),
    DropDownValueModel(name: 'Yes', value: "value39"),
  ];

  static List<DropDownValueModel> stroke = const [
    DropDownValueModel(name: 'Yes', value: "value40"),
    DropDownValueModel(name: 'No', value: "value41"),
  ];
}
