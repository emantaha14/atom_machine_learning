part of 'model_info_back_cubit.dart';


enum BackModelStatus { initial, loading, success, failure }

@immutable
class BackModelState {
  final BackModelStatus status;
  final String? errorMessage;

  const BackModelState({required this.status, this.errorMessage});
}
