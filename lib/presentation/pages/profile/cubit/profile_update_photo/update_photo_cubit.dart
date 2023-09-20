// ignore_for_file: public_member_api_docs, sort_constructors_first, depend_on_referenced_packages, avoid_print, unused_import
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:telkom_career/base/result_entity.dart';
import 'package:telkom_career/data/utilities/commons.dart';
import 'package:telkom_career/domain/base/authentication_header_request.dart';
import 'package:telkom_career/domain/model/request/profile/profile_update_photo/profile_update_photo_request.dart';
import 'package:telkom_career/domain/repository/profile/profile_update_photo_repository.dart';
//import 'package:telkom_career/domain/base/authentication_header_request.dart';

//import 'package:telkom_career/domain/repository/update_photo/update_photo_repository.dart';

part 'update_photo_state.dart';

class UpdatePhotoCubit extends Cubit<UpdatePhotoState> {
  final ProfileUpdatePhotoRepository repository;
  UpdatePhotoCubit(
    this.repository,
  ) : super(UpdatePhotoInitial());

  Future<void> fetchProfileUpdatePhoto(
      ProfileUpdatePhotoRequest request) async {
    final token = await Commons().getUid();
    emit(UpdatePhotoInitial());

    final response = await repository.fetchProfileUpdatePhoto(
        request, AuthenticationHeaderRequest(token));

    if (response is ResultSuccess) {
      emit(
        UpdatePhotoIsSucces(message: (response as ResultSuccess).toString()),
      );
    } else {
      emit(UpdatePhotoIsError(message: (response as ResultError).message));
    }
  }

  // Future<void> updatePhoto(String id, String profileId) async {
  //   emit(UpdatePhotoIsLoading());

  //   final response = await repository.updatePhoto(id, profileId);
  //   if (response is ResultSuccess) {
  //     if (response.data == null) {}
  //     emit(UpdatePhotoIsSucces(message: ""));

  //     print("Succes");
  //   } else if (response is ResultError) {
  //     emit(UpdatePhotoIsError(message: response.message));
  //     print("eror");
  //   }
  //}
}
