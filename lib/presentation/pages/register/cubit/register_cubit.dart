// ignore_for_file: depend_on_referenced_packages, unnecessary_cast, avoid_print

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:telkom_career/base/result_entity.dart';
import 'package:telkom_career/data/utilities/commons.dart';
import 'package:telkom_career/domain/model/request/register/register_request.dart';
import 'package:telkom_career/domain/repository/register/register_repository.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  final RegisterRepository repository;
  RegisterCubit(
    this.repository,
  ) : super(RegisterInitial());

  Future<void> onUserRegister(RegisterRequest request) async {
    emit(RegisterIsLoading());
    final response = await repository.userRegister(request);
    if (response is ResultSuccess) {
      emit(RegisterIsSuccess(data: (response as ResultSuccess).data));
      final data = (state as RegisterIsSuccess).data;
      Commons().setUid(data.toString());
      print("Register ${data.toString()}");

      //emit(RegisterIsSuccess(data: (response).data));
    } else /*(response is ResultError)*/ {
      emit(RegisterIsFailed(message: (response as ResultError).message));
    }
  }
}
