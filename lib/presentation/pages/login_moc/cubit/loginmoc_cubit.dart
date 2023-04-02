// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:telkom_career/base/result_entity.dart';
import 'package:telkom_career/data/utilities/commons.dart';

import 'package:telkom_career/domain/model/data/login_moc/login_user_data.dart';
import 'package:telkom_career/domain/model/request/login_request_moc/login_requestmoc.dart';
import 'package:telkom_career/domain/repository/login_moc/login_repositorymoc.dart';

part 'loginmoc_state.dart';

class LoginmocCubit extends Cubit<LoginmocState> {
  final LoginRepositoryMoc repository;
  LoginmocCubit(
    this.repository,
  ) : super(LoginmocInitial());

  Future<void> onSubmitLogin(String? email, String? password) async {
    emit(LoginmocIsLoading());
    final request = LoginRequest(email!, password!);
    final response = await repository.submitLogin(request);
    if (response is ResultSuccess) {
      emit(LoginmocIsSuccess(data: (response as ResultSuccess).data));
      // final token = (response as ResultSuccess).data;
      // print("token: ${token}");
      // Commons().setUid(token.toString());
    } else {
      emit(LoginmocIsError(message: (response as ResultError).message));
    }
  }
}
