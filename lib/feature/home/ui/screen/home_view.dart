import 'package:atom/core/helper/app_string.dart';
import 'package:atom/core/helper/extension.dart';
import 'package:atom/core/theming/styles_manager.dart';
import 'package:atom/feature/home/data/repo/predict_disease_repo.dart';
import 'package:atom/feature/home/logic/predict_disease_state.dart';
import 'package:atom/feature/home/ui/widget/text_field_default.dart';
import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/helper/lists_management.dart';
import '../../../../core/theming/colors.dart';
import '../../logic/predict_disease_cubit.dart';
import '../widget/drop_down_text_field_default.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late SingleValueDropDownController _cnt;
  late MultiValueDropDownController _cntMulti;
  final TextEditingController _hoursOnAverageController =
      TextEditingController();

  final SingleValueDropDownController _sexController =
      SingleValueDropDownController();
  final SingleValueDropDownController _ageController =
      SingleValueDropDownController();
  final TextEditingController _bmiController = TextEditingController();
  final SingleValueDropDownController _generaHealthController =
      SingleValueDropDownController();
  final SingleValueDropDownController _pathMonthController =
      SingleValueDropDownController();
  final TextEditingController _physicalHealth = TextEditingController();
  final TextEditingController _mentalHealth = TextEditingController();
  final TextEditingController _hoursOfSleepController = TextEditingController();
  final SingleValueDropDownController _walkingOrClimbingController =
      SingleValueDropDownController();
  final SingleValueDropDownController _smokingStatusController =
      SingleValueDropDownController();
  final SingleValueDropDownController _alcoholController =
      SingleValueDropDownController();
  final SingleValueDropDownController _kidneyStonesController =
      SingleValueDropDownController();
  final SingleValueDropDownController _asthmaController =
      SingleValueDropDownController();
  final SingleValueDropDownController _skinCancerController =
      SingleValueDropDownController();
  final SingleValueDropDownController _diabetesController =
      SingleValueDropDownController();
  final SingleValueDropDownController _strokeController =
      SingleValueDropDownController();

  @override
  void initState() {
    _cnt = SingleValueDropDownController();
    _cntMulti = MultiValueDropDownController();
    super.initState();
  }

  @override
  void dispose() {
    _cnt.dispose();
    _cntMulti.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PredictDiseaseCubit(PredictDiseaseRepo()),
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          backgroundColor: Colors.grey[100],
          elevation: 0,
          title: Text(AppStrings.featureSelection,
              style: Theme.of(context).textTheme.displayLarge),
        ),
        body: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    AppStrings.sex,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  DropDownTextFieldDefault(
                    dropDownValueModelList: ListManager.sex,
                    textEditingController: _sexController,
                  ),
                  Text(
                    AppStrings.ageCategory,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  DropDownTextFieldDefault(
                      dropDownValueModelList: ListManager.ageCategory,
                      textEditingController: _ageController),
                  Text(
                    AppStrings.bmi,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  DefaultTextFormField(
                    hintText: AppStrings.bmiHint,
                    textEditingController: _bmiController,
                  ),
                  Text(
                    AppStrings.generalHealth,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  DropDownTextFieldDefault(
                      dropDownValueModelList: ListManager.generalHealth,
                      textEditingController: _generaHealthController),
                  Text(
                    AppStrings.pastMonth,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  DropDownTextFieldDefault(
                      dropDownValueModelList: ListManager.general,
                      textEditingController: _pathMonthController),
                  Text(
                    AppStrings.physicalHealth,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  DefaultTextField(
                      controller: _physicalHealth,
                      hintText: AppStrings.physicalHealthHint),
                  Text(
                    AppStrings.mentalHealth,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  DefaultTextField(
                      controller: _mentalHealth,
                      hintText: AppStrings.mentalHealthHint),
                  Text(
                    AppStrings.howManyHoursOfSleep,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  DefaultTextField(
                      controller: _hoursOfSleepController,
                      hintText: AppStrings.hoursOfSleep),
                  Text(
                    AppStrings.walkingOrClimbing,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  DropDownTextFieldDefault(
                      dropDownValueModelList: ListManager.general,
                      textEditingController: _walkingOrClimbingController),
                  Text(
                    AppStrings.smokerStatus,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  DropDownTextFieldDefault(
                      dropDownValueModelList: ListManager.smoking,
                      textEditingController: _smokingStatusController),
                  Text(
                    AppStrings.alcohol,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  DropDownTextFieldDefault(
                      dropDownValueModelList: ListManager.general,
                      textEditingController: _alcoholController),
                  Text(
                    AppStrings.includeKidneyStones,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  DropDownTextFieldDefault(
                      dropDownValueModelList: ListManager.general,
                      textEditingController: _kidneyStonesController),
                  Text(
                    AppStrings.asthma,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  DropDownTextFieldDefault(
                      dropDownValueModelList: ListManager.general,
                      textEditingController: _asthmaController),
                  Text(
                    AppStrings.skinCancer,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  DropDownTextFieldDefault(
                      dropDownValueModelList: ListManager.general,
                      textEditingController: _skinCancerController),
                  Text(
                    AppStrings.diabetes,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  DropDownTextFieldDefault(
                      dropDownValueModelList: ListManager.diabetes,
                      textEditingController: _diabetesController),
                  Text(
                    AppStrings.stroke,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  DropDownTextFieldDefault(
                      dropDownValueModelList: ListManager.stroke,
                      textEditingController: _strokeController),
                ],
              ),
            ),
          ),
        ),
        floatingActionButton:
            BlocConsumer<PredictDiseaseCubit, PredictDiseaseState>(
          listener: (context, state) {
            if (state is PredictDiseaseSuccess) {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: Row(
                    children: [
                      Image.asset(
                        'assets/image/doc.png',
                        width: 100,
                        height: 200,
                      ),
                      SizedBox(
                        width: 200,
                        child: Text(
                          '${(state.predictDiseaseModel.classifier! * 10).toStringAsFixed(2)}% you have heart disease',
                          style: getMediumStyle(
                              color: Colors.black.withOpacity(0.7),
                              fontSize: 23),
                          maxLines: 2,
                        ),
                      ),
                    ],
                  ),
                  actions: [
                    TextButton(
                      onPressed: () {
                        context.pop();
                      },
                      child: Text(
                        'Got it',
                        style: getBoldStyle(color: ColorManger.orange),
                      ),
                    ),
                  ],
                ),
              );
            }
          },
          builder: (context, state) {
            if (state is PredictDiseaseLoading) {
              return const CircularProgressIndicator();
            } else {
              return FloatingActionButton.extended(
                onPressed: () {
                  context.read<PredictDiseaseCubit>().getPredictDisease(
                        sex: _sexController.dropDownValue!.name,
                        age: _ageController.dropDownValue!.name,
                        bmi: double.parse(_bmiController.text),
                        generaHealth:
                            _generaHealthController.dropDownValue!.name,
                        physicalActivity:
                            _pathMonthController.dropDownValue!.name,
                        physicalHealth: double.parse(_physicalHealth.text),
                        mentalHealth: double.parse(_mentalHealth.text),
                        sleepTime: double.parse(_hoursOfSleepController.text),
                        diffWalking:
                            _walkingOrClimbingController.dropDownValue!.name,
                        smoking: _smokingStatusController.dropDownValue!.name,
                        alcoholDrinking: _alcoholController.dropDownValue!.name,
                        kidneyDisease:
                            _kidneyStonesController.dropDownValue!.name,
                        asthma: _asthmaController.dropDownValue!.name,
                        skinCancer: _skinCancerController.dropDownValue!.name,
                        stroke: _strokeController.dropDownValue!.name,
                        diabetic: _diabetesController.dropDownValue!.name,
                      );
                },
                label: Text(
                  AppStrings.predict,
                  style: const TextStyle(color: ColorManger.white),
                ),
                backgroundColor: ColorManger.orange,
              );
            }
          },
        ),
      ),
    );
  }
}
