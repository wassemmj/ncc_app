import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/repo/home_repo.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeState.initial());

  var newProduct;
  var discountProduct;

  Future getHome(String sort) async {
    emit(state.copyWith(status: HomeStatus.loading));
    try {
      newProduct = await HomeRepo.getNewProduct(sort);
      discountProduct = await HomeRepo.getDiscountProduct(sort);
      emit(state.copyWith(status: HomeStatus.success));
    } catch (e) {
      emit(state.copyWith(status: HomeStatus.error));
    }
  }

  Future getNewProduct(String sort) async {
    emit(state.copyWith(status: HomeStatus.loading));
    try {
      newProduct = await HomeRepo.getNewProduct(sort);
      emit(state.copyWith(status: HomeStatus.success));
    } catch (e) {
      emit(state.copyWith(status: HomeStatus.error));
    }
  }

  Future getDiscountProduct(String sort) async {
    emit(state.copyWith(status: HomeStatus.loading));
    try {
      discountProduct = await HomeRepo.getDiscountProduct(sort);
      emit(state.copyWith(status: HomeStatus.success));
    } catch (e) {
      emit(state.copyWith(status: HomeStatus.error));
    }
  }
}
