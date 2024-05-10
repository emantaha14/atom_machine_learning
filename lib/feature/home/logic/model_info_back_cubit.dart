import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../data/repo/backmodel_repo.dart';
import '../data/repo/model_info_request.dart';

part 'model_info_back_state.dart';

class ModelInfoBackCubit extends Cubit<BackModelState> {
  final BackModelRepo _backModelRepo;

  ModelInfoBackCubit(this._backModelRepo) : super(const BackModelState(status: BackModelStatus.initial));

  void userModelInformation({required ModelInfRequest modelInfRequest}) async {
    emit( const BackModelState(status: BackModelStatus.loading));
    try {
       await _backModelRepo.modelInformation(modelInfRequest);
    emit(const BackModelState(status: BackModelStatus.success));
    } catch (e) {
      emit(const BackModelState(status: BackModelStatus.failure, errorMessage: 'Enter the rest of information, please'));
    }
  }

}

