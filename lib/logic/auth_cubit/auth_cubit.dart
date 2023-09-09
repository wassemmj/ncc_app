import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:ncc_app/data/repo/auth_repo.dart';

import '../../core/token.dart';
import '../../data/models/auth_model.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthState.initial());

  Future register(AuthModel authModel) async {
    emit(state.copyWith(status: AuthStatus.loading));
    try {
      var auth = await AuthRepo.register(authModel);
      Token.token = auth['token'];
      // Id.id = auth['user']['id'];
      emit(state.copyWith(
          status: AuthStatus.success,
          authModel: authModel,
      ));
    } catch (e) {
      emit(state.copyWith(status: AuthStatus.error));
    }
  }

  Future login(AuthModel authModel) async {
    emit(state.copyWith(status: AuthStatus.loading));
    try {
      var auth = await AuthRepo.login(authModel);
      Token.token = auth['token'];
      // Id.id = auth['user']['id'];
      emit(state.copyWith(
          status: AuthStatus.success,
          authModel: authModel,
      ));
    } catch (e) {
      emit(state.copyWith(status: AuthStatus.error));
    }
  }

  Future logout() async {
    emit(state.copyWith(status: AuthStatus.loading));
    try {
      await AuthRepo.logout();
      emit(state.copyWith(
        status: AuthStatus.success,
      ));
    } catch (e) {
      emit(state.copyWith(status: AuthStatus.error));
    }
  }
}
