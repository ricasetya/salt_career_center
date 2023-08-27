// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:telkom_career/base/result_entity.dart';
import 'package:telkom_career/data/utilities/commons.dart';
import 'package:telkom_career/domain/base/authentication_header_request.dart';
import 'package:telkom_career/domain/model/request/profile/profile_update_language/profile_update_language_request.dart';

import 'package:telkom_career/domain/repository/profile/profile_update_language_repository.dart';

part 'profile_update_language_state.dart';

class ProfileUpdateLanguageCubit extends Cubit<ProfileUpdateLanguageState> {
  final ProfileUpdateLanguageRepository repository;
  ProfileUpdateLanguageCubit(
    this.repository,
  ) : super(ProfileUpdateLanguageInitial());

  Future<void> fetchProfileUpdateLanguage(
      ProfileUpdateLanguageRequest request) async {
    final token = await Commons().getUid();
    emit(ProfileUpdateLanguageIsLoading());

    final response = await repository.updateProfileLanguageRepository(
        AuthenticationHeaderRequest(token), request);

    if (response is ResultSuccess) {
      emit(
        ProfileUpdateLanguageIsSuccess("Update Language Success"),
      );
    } else {
      emit(ProfileUpdateLanguageIsFailed(
          message: (response as ResultError).message));
    }
  }
}
