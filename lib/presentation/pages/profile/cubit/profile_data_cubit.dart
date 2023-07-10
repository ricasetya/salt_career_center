// ignore_for_file: public_member_api_docs, sort_constructors_first, depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:telkom_career/base/result_entity.dart';
import 'package:telkom_career/domain/base/authentication_header_request.dart';

import 'package:telkom_career/domain/model/data/profile/profile_data.dart';
import 'package:telkom_career/domain/repository/profile/profile_data_repository.dart';

part 'profile_data_state.dart';

class ProfileDataCubit extends Cubit<ProfileDataState> {
  final ProfileDataRepository repository;
  ProfileDataCubit(
    this.repository,
  ) : super(ProfileDataInitial());

  Future<void> fetchProfileData(AuthenticationHeaderRequest header) async {
    emit(ProfileDataIsLoading());
    final response = await repository.fetchProfileData(header);
    if (response is ResultSuccess) {
      emit(ProfileDataIsSuccess((response as ResultSuccess).data));
    } else {
      emit(ProfileDataIsError(message: (response as ResultError).message));
    }
  }
}
