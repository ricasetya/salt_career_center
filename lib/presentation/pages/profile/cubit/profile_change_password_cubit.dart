// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:telkom_career/base/result_entity.dart';
import 'package:telkom_career/data/utilities/commons.dart';
import 'package:telkom_career/domain/base/authentication_header_request.dart';

import 'package:telkom_career/domain/model/data/profile/profile_change_password_data.dart';
import 'package:telkom_career/domain/model/request/profile_change_password/profile_change_password_request.dart';
import 'package:telkom_career/domain/repository/profile/profile_change_password_repository.dart';

part 'profile_change_password_state.dart';

class ProfileChangePasswordCubit extends Cubit<ProfileChangePasswordState> {
  final ProfileChangePasswordRepository repository;
  ProfileChangePasswordCubit(
    this.repository,
  ) : super(ProfileChangePasswordInitial());

  Future<void> fetchProfileChangePassword(
      ProfileChangePasswordRequest request) async {
    final token = await Commons().getUid();
    print("TOKEN idChangePassword = ${token}");
    emit(ProfileChangePasswordIsLoading());

    final response = await repository.submitProfileChangePassword(request);

    if (response is ResultSuccess) {
      emit(
        ProfileChangePasswordIsSucces(data: (response as ResultSuccess).data),
      );
      //Commons().removeUid(token!.toString());
    } else {
      emit(ProfileChangePasswordIsFailed(
          message: (response as ResultError).message));
    }
  }
}
