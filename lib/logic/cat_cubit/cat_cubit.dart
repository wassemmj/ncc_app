
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ncc_app/data/repo/cat_repo.dart';

part 'cat_state.dart';

class CatCubit extends Cubit<CatState> {
  CatCubit() : super(CatState.initial());

  var category;
  var section;
  var sectors;
  var product;

  Future getCat() async {
    emit(state.copyWith(status: CatStatus.loading));
    try {
      category = await CatRepo.catRepo();
      emit(state.copyWith(status: CatStatus.success));
    } catch(e) {
      emit(state.copyWith(status: CatStatus.error));
    }
  }

  Future getSec(int catId) async {
    emit(state.copyWith(status: CatStatus.loading));
    try {
      section = await CatRepo.secRepo(catId);
      print(section);
      emit(state.copyWith(status: CatStatus.success));
    } catch(e) {
      emit(state.copyWith(status: CatStatus.error));
    }
  }

  Future getSector(int secId,String sort) async {
    emit(state.copyWith(status: CatStatus.loading));
    try {
      sectors = await CatRepo.sectorRepo(secId, sort);
      print(sectors);
      emit(state.copyWith(status: CatStatus.success));
    } catch(e) {
      emit(state.copyWith(status: CatStatus.error));
    }
  }

  Future getProduct(int sectorId,String sort) async {
    emit(state.copyWith(status: CatStatus.loading));
    try {
      product = await CatRepo.productRepo(sectorId, sort);
      emit(state.copyWith(status: CatStatus.success));
    } catch(e) {
      emit(state.copyWith(status: CatStatus.error));
    }
  }

  Future api(String api) async {
    emit(state.copyWith(status: CatStatus.loading));
    try {
      product = await CatRepo.api(api);
      emit(state.copyWith(status: CatStatus.success));
      return product;
    } catch(e) {
      emit(state.copyWith(status: CatStatus.error));
    }
  }
}
