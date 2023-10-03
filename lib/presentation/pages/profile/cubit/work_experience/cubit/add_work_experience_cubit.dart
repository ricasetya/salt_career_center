// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:telkom_career/base/result_entity.dart';
import 'package:telkom_career/data/utilities/commons.dart';
import 'package:telkom_career/domain/base/authentication_header_request.dart';
import 'package:telkom_career/domain/model/request/profile/profile_work_experience/add_work_experience_request.dart';
import 'package:telkom_career/domain/repository/profile/add_work_experience_repository.dart';

part 'add_work_experience_state.dart';

class AddWorkExperienceCubit extends Cubit<AddWorkExperienceState> {
  final AddWorkExperienceRepository repository;
  AddWorkExperienceCubit(this.repository) : super(AddWorkExperienceInitial());

  Future<void> addWorkExperience(AddWorkExperienceRequest request) async {
    final token = await Commons().getUid();
    emit(AddWorkExperienceIsLoading());
    final response = await repository.addWorkExperience(
        AuthenticationHeaderRequest(token), request);
    if (response is ResultSuccess) {
      emit(AddWorkExperienceIsSuccess("Update Job Experience Success"));
    } else {
      emit(AddWorkExperienceIsFailed((response as ResultError).message));
    }
  }
}
