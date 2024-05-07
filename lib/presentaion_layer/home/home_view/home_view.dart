import 'package:atom/presentaion_layer/resources/color_manager.dart';
import 'package:atom/presentaion_layer/resources/strings_manager.dart';
import 'package:atom/presentaion_layer/resources/values_manager.dart';
import 'package:atom/presentaion_layer/widgets/text_field_default.dart';
import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';

import '../../widgets/drop_down_text_field_default.dart';
import '../../resources/lists_management.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late SingleValueDropDownController _cnt;
  late MultiValueDropDownController _cntMulti;
  final TextEditingController _hoursOnAverageController =
      TextEditingController();

  final TextEditingController _sexController = TextEditingController();
  final TextEditingController _ageController = TextEditingController();
  final TextEditingController _bmiController = TextEditingController();
  final TextEditingController _generaHealthController = TextEditingController();
  final TextEditingController _pathMonthController = TextEditingController();
  final TextEditingController _physicalHealth = TextEditingController();
  final TextEditingController _mentalHealth = TextEditingController();
  final TextEditingController _hoursOfSleepController = TextEditingController();
  final TextEditingController _walkingOrClimbingController = TextEditingController();
  final TextEditingController _smokingStatusController = TextEditingController();
  final TextEditingController _alcoholController = TextEditingController();
  final TextEditingController _kidneyStonesController = TextEditingController();
  final TextEditingController _asthmaController = TextEditingController();
  final TextEditingController _skinCancerController = TextEditingController();
  final TextEditingController _diabetesController = TextEditingController();

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
    return Scaffold(
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
            padding: const EdgeInsets.symmetric(horizontal: AppPadding.p20),
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
                    controller: _physicalHealth, hintText: AppStrings.physicalHealthHint),
                Text(
                  AppStrings.mentalHealth,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                DefaultTextField(
                    controller: _mentalHealth, hintText: AppStrings.mentalHealthHint),
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
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          setState(() {});
        },
        label:  Text(AppStrings.predict, style: TextStyle(color: ColorManager.white),),
        backgroundColor: ColorManager.orange,
      ),
    );
  }
}
