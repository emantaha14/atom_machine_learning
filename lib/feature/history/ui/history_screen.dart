import 'package:atom/feature/home/data/repo/backmodel_repo.dart';
import 'package:atom/feature/home/data/repo/network.dart';
import 'package:atom/feature/home/logic/predict_disease_cubit.dart';
import 'package:atom/feature/home/logic/predict_disease_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/helper/app_string.dart';


class HistoryScreen extends StatelessWidget {
  HistoryScreen({Key? key}) : super(key: key);

  final BackModelRepo _backModelRepo = BackModelRepo(BackModelService());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          backgroundColor: Colors.grey[100],
          elevation: 0,
          title: Text(
            AppStrings.history,
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        body: BlocBuilder<PredictDiseaseCubit, PredictDiseaseState>(
          builder: (context, state) {
            if (state is BackModelInfoSuccessState) {
              return Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildInfoItem(context, 'Sex', state.backModelResponse.data.data.sex),
                    _buildInfoItem(context, 'BMI', state.backModelResponse.data.data.bmi.toString()),
                    _buildInfoItem(context, 'GenHealth', state.backModelResponse.data.data.genHealth),
                    _buildInfoItem(context, 'PhysicalActivity', state.backModelResponse.data.data.physicalActivity),
                    _buildInfoItem(context, 'PhysicalHealth', state.backModelResponse.data.data.physicalHealth.toString()),
                    _buildInfoItem(context, 'MentalHealth', state.backModelResponse.data.data.mentalHealth.toString()),
                    _buildInfoItem(context, 'SleepTime', state.backModelResponse.data.data.sleepTime.toString()),
                    _buildInfoItem(context, 'DiffWalking', state.backModelResponse.data.data.diffWalking),
                    _buildInfoItem(context, 'Smoking', state.backModelResponse.data.data.smoking),
                    _buildInfoItem(context, 'AlcoholDrinking', state.backModelResponse.data.data.alcoholDrinking),
                    _buildInfoItem(context, 'KidneyDisease', state.backModelResponse.data.data.kidneyDisease),
                    _buildInfoItem(context, 'Asthma', state.backModelResponse.data.data.asthma),
                    _buildInfoItem(context, 'SkinCancer', state.backModelResponse.data.data.skinCancer),
                    _buildInfoItem(context, 'Stroke', state.backModelResponse.data.data.stroke),
                    _buildInfoItem(context, 'Diabetic', state.backModelResponse.data.data.diabetic),
                    _buildInfoItem(context, 'result', state.backModelResponse.data.data.result.toString()),

                    // Add more info items as needed
                  ],
                ),
              );
            } else if (state is BackModelInfoLoadingState) {
              return const Center(child: CircularProgressIndicator());
            }
            return Container();
          },
        ),
      );
  }
  Widget _buildInfoItem(BuildContext context, String title, String value) {
    return Card(
      elevation: 0,
      child: Container(
        width: double.infinity,
        margin: const EdgeInsets.only(bottom: 16.0),
        padding: const EdgeInsets.all(16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.subtitle1!.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8.0),
            const Spacer(),
            Text(
              value,
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ],
        ),
      ),
    );
  }
}



