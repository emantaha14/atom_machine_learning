// import 'package:atom/feature/home/data/model/model_for_backmodel.dart';
// import 'package:bloc/bloc.dart';
//
//
// import '../data/repo/backmodel_repo.dart';
// import '../data/repo/model_info_request.dart';
//
// part 'model_info_back_state.dart';
//
// class BackModelInfoCubit extends Cubit<BackModelInfoState> {
//   final BackModelRepo _backModelRepo;
//   BackModelInfoCubit(this._backModelRepo) : super(BackModelInfoInitialState());
//
//   void userModelInformation({required ModelInfRequest modelInfRequest}) async {
//     emit(BackModelInfoLoadingState());
//     try {
//       await _backModelRepo.modelInformation(modelInfRequest).then((value) {
//         emit(BackModelInfoSuccessState(backModelResponse: value));
//       });
//     } catch (error) {
//       emit(BackModelInfoFailureState(error: error.toString()));
//     }
//   }
// }
