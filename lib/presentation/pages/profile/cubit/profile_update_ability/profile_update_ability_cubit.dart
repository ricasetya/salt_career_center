// ignore_for_file: public_member_api_docs, sort_constructors_first, depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:telkom_career/base/result_entity.dart';
import 'package:telkom_career/data/utilities/commons.dart';
import 'package:telkom_career/domain/base/authentication_header_request.dart';
import 'package:telkom_career/domain/model/request/profile/profile_update_ability/profile_update_ability_request.dart';

import 'package:telkom_career/domain/repository/profile/profile_update_ability_repository.dart';

part 'profile_update_ability_state.dart';

class ProfileUpdateAbilityCubit extends Cubit<ProfileUpdateAbilityState> {
  final ProfileUpdateAbilityRepository repository;
  ProfileUpdateAbilityCubit(
    this.repository,
  ) : super(ProfileUpdateAbilityInitial());

  Future<void> fetchProfileUpdateAbility(
      ProfileUpdateAbilityRequest request) async {
    final token = await Commons().getUid();
    emit(ProfileUpdateAbilityIsLoading());

    final response = await repository.updateProfileAbilityRepository(
        AuthenticationHeaderRequest(token), request);

    if (response is ResultSuccess) {
      emit(
        ProfileUpdateAbilityIsSuccess("Update Ability Succes"),
      );
    } else {
      emit(ProfileUpdateAbilityIsFailed(
          message: (response as ResultError).message));
    }
  }
}
