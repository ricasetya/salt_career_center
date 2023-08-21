// ignore_for_file: public_member_api_docs, sort_constructors_first, unnecessary_brace_in_string_interps, avoid_print, depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:telkom_career/base/result_entity.dart';
import 'package:telkom_career/data/utilities/commons.dart';
import 'package:telkom_career/domain/base/authentication_header_request.dart';

import 'package:telkom_career/domain/model/data/profile/profile_edit_profile_data.dart';
import 'package:telkom_career/domain/model/request/profile/profile_edit_profile/profile_edit_profile_request.dart';
import 'package:telkom_career/domain/repository/profile/profile_edit_profile_repository.dart';

part 'profile_edit_profile_state.dart';

class ProfileEditProfileCubit extends Cubit<ProfileEditProfileState> {
  final ProfileEditProfileRepository repository;
  ProfileEditProfileCubit(
    this.repository,
  ) : super(ProfileEditProfileInitial());

  Future<void> submitProfileEditProfile(
      ProfileEditProfileRequest request) async {
    final token = await Commons().getUid();
    print("TOKEN PROFILE EDIT PROFILE : ${token}");
    emit(ProfileEditProfileIsLoading());

    final response = await repository.updateProfileEditProfileRepository(
        AuthenticationHeaderRequest(token), request);

    if (response is ResultSuccess) {
      emit(
        ProfileEditProfileIsSuccess(data: (response as ResultSuccess).data),
      );
    } else {
      emit(ProfileEditProfileIsFailed(
          message: (response as ResultError).message));
    }
  }
}
