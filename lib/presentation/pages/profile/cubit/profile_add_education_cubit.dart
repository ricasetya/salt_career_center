// ignore_for_file: public_member_api_docs, sort_constructors_first, depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:telkom_career/base/result_entity.dart';
import 'package:telkom_career/data/utilities/commons.dart';
import 'package:telkom_career/domain/base/authentication_header_request.dart';
import 'package:telkom_career/domain/model/request/profile/profile_add_education/profile_add_education_request.dart';

import 'package:telkom_career/domain/repository/profile/profile_add_education_repository.dart';

part 'profile_add_education_state.dart';

class ProfileAddEducationCubit extends Cubit<ProfileAddEducationState> {
  final ProfileAddEducationRepository repository;
  ProfileAddEducationCubit(
    this.repository,
  ) : super(ProfileAddEducationInitial());

  Future<void> fetchProfileAddEducation(
      ProfileAddEducationRequest request) async {
    final token = await Commons().getUid();
    emit(ProfileAddEducationIsLoading());

    final response = await repository.submitProfileAddEducation(
        AuthenticationHeaderRequest(token), request);

    if (response is ResultSuccess) {
      emit(
        ProfileAddEducationIsSuccess("Add Education Succsess"),
      );
    } else {
      emit(ProfileAddEducationIsFailed((response as ResultError).message));
    }
  }
}
