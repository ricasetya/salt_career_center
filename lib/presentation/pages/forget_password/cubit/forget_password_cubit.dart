// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:telkom_career/base/result_entity.dart';
import 'package:telkom_career/domain/model/request/forget_password/forget_password_request.dart';
import 'package:telkom_career/domain/repository/forget_password/forget_password_repository.dart';

part 'forget_password_state.dart';

class ForgetPasswordCubit extends Cubit<ForgetPasswordState> {
  final ForgetPasswordRepository repository;

  ForgetPasswordCubit(this.repository) : super(ForgetPasswordInitial());
  Future<void> buttonForgetPassword(ForgetPasswordRequest request) async {
    emit(ForgetPasswordIsLoading());
    final response = await repository.submitForgetPassword(request);
    if (response is ResultSuccess) {
      emit(
        ForgetPasswordIsSuccess(message: (response).toString()),
      );
    } else {
      emit(ForgetPasswordIsError(message: (response as ResultError).message));
    }
  }
}
