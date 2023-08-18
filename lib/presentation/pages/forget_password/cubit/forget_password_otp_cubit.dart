// ignore_for_file: public_member_api_docs, sort_constructors_first, depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:telkom_career/base/result_entity.dart';
import 'package:telkom_career/domain/model/request/forget_password/forget_password_otp_request.dart';

import 'package:telkom_career/domain/repository/forget_password/forget_password_otp_repository.dart';

part 'forget_password_otp_state.dart';

class ForgetPasswordOtpCubit extends Cubit<ForgetPasswordOtpState> {
  final ForgetPasswordOtpRepository repository;
  ForgetPasswordOtpCubit(
    this.repository,
  ) : super(ForgetPasswordOtpInitial());

  Future<void> buttonForgetPasswordOtp(ForgetPasswordOtpRequest request) async {
    emit(ForgetPasswordOtpIsLoading());
    final response = await repository.submitForgetPasswordOtp(request);
    if (response is ResultSuccess) {
      emit(
        ForgetPasswordOtpIsSuccess(data: (response).toString()),
      );
    } else {
      emit(
          ForgetPasswordOtpIsError(message: (response as ResultError).message));
    }
  }
}
