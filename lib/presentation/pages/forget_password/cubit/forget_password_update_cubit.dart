// ignore_for_file: public_member_api_docs, sort_constructors_first, depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:telkom_career/base/result_entity.dart';
import 'package:telkom_career/domain/model/request/forget_password/forget_password_update_request.dart';

import 'package:telkom_career/domain/repository/forget_password/forget_password_update_repository.dart';

part 'forget_password_update_state.dart';

class ForgetPasswordUpdateCubit extends Cubit<ForgetPasswordUpdateState> {
  final ForgetPasswordUpdateRepository repository;
  ForgetPasswordUpdateCubit(
    this.repository,
  ) : super(ForgetPasswordUpdateInitial());

  Future<void> buttonForgetPasswordUpdate(
      ForgetPasswordUpdateRequest request) async {
    emit(ForgetPasswordUpdateIsLoading());
    final response = await repository.submitForgetPasswordUpdate(request);
    if (response is ResultSuccess) {
      emit(
        ForgetPasswordUpdateIsSuccess(data: (response).toString()),
      );
    } else {
      emit(ForgetPasswordUpdateIsError(
          message: (response as ResultError).message));
    }
  }
}
