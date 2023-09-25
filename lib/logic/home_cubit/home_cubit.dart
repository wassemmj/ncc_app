import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ncc_app/data/repo/cat_repo.dart';

import '../../data/repo/add_repo.dart';
import '../../data/repo/home_repo.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeState.initial());

  var newProduct;
  var discountProduct;
  var usedProduct;
  var searchList;
  var adds;
  var products;

  Future getHome(String sort) async {
    emit(state.copyWith(status: HomeStatus.loading));
    try {
      adds = await AddRepo.getAdd();
      newProduct = await HomeRepo.getNewProduct(sort);
      usedProduct = await HomeRepo.getUsedProduct(sort);
      discountProduct = await HomeRepo.getDiscountProduct(sort);
      emit(state.copyWith(status: HomeStatus.success));
    } catch (e) {
      emit(state.copyWith(status: HomeStatus.error));
    }
  }

  Future getAdd() async {
    emit(state.copyWith(status: HomeStatus.loading));
    try {
      adds = await AddRepo.getAdd();
      emit(state.copyWith(status: HomeStatus.success));
    } catch (e) {
      emit(state.copyWith(status: HomeStatus.error));
    }
  }

  Future search(String word) async {
    emit(state.copyWith(status: HomeStatus.loading));
    try {
      searchList = await HomeRepo.search(word);
      emit(state.copyWith(status: HomeStatus.success));
    } catch (e) {
      emit(state.copyWith(status: HomeStatus.error));
    }
  }

  Future getNewProduct(String sort) async {
    emit(state.copyWith(status: HomeStatus.loading));
    try {
      products = await HomeRepo.getNewProduct(sort);
      emit(state.copyWith(status: HomeStatus.success));
    } catch (e) {
      emit(state.copyWith(status: HomeStatus.error));
    }
  }

  Future getUsedProduct(String sort) async {
    emit(state.copyWith(status: HomeStatus.loading));
    try {
      products = await HomeRepo.getUsedProduct(sort);
      emit(state.copyWith(status: HomeStatus.success));
    } catch (e) {
      emit(state.copyWith(status: HomeStatus.error));
    }
  }

  Future getDiscountProduct(String sort) async {
    emit(state.copyWith(status: HomeStatus.loading));
    try {
      products = await HomeRepo.getDiscountProduct(sort);
      emit(state.copyWith(status: HomeStatus.success));
    } catch (e) {
      emit(state.copyWith(status: HomeStatus.error));
    }
  }

  Future api(String api) async {
    emit(state.copyWith(status: HomeStatus.loading));
    try {
      products = await CatRepo.api(api);
      emit(state.copyWith(status: HomeStatus.success));
      return products;
    } catch(e) {
      emit(state.copyWith(status: HomeStatus.error));
    }
  }
}
