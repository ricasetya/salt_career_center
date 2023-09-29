// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:telkom_career/base/result_entity.dart';
import 'package:telkom_career/data/utilities/commons.dart';
import 'package:telkom_career/domain/base/authentication_header_request.dart';
import 'package:telkom_career/domain/model/request/profile/profile_cvresume/profile_cv_resume_request.dart';

import 'package:telkom_career/domain/repository/profile/profile_cv_resume_repository.dart';

part 'profile_update_cv_resume_state.dart';

class ProfileUpdateCvResumeCubit extends Cubit<ProfileUpdateCvResumeState> {
  final ProfileCvResumeRepository repository;
  ProfileUpdateCvResumeCubit(
    this.repository,
  ) : super(ProfileUpdateCvResumeInitial());

  Future<void> fetchProfileUpdateCvResume(
      ProfileCvResumeRequest request) async {
    emit(ProfileUpdateCvResumeIsLoading());
    final token = await Commons().getUid();

    final response = await repository.fetchAddCvResume(
        AuthenticationHeadersRequestUpload(token), request);

    if (response is ResultSuccess) {
      emit(
        ProfileUpdateCvResumeIsSuccess(message: "Upload Success"),
      );
    } else {
      emit(ProfileUpdateCvResumeIsFailed(message: "UPLOAD FAILED"));
    }
  }
}
