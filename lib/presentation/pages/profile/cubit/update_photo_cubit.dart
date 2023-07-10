// ignore_for_file: public_member_api_docs, sort_constructors_first, depend_on_referenced_packages, avoid_print
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:telkom_career/base/result_entity.dart';
//import 'package:telkom_career/domain/base/authentication_header_request.dart';

import 'package:telkom_career/domain/repository/update_photo/update_photo_repository.dart';

part 'update_photo_state.dart';

class UpdatePhotoCubit extends Cubit<UpdatePhotoState> {
  final UpdatePhotoRepository repository;
  UpdatePhotoCubit(
    this.repository,
  ) : super(UpdatePhotoInitial());

  Future<void> updatePhoto(String id, String profileId) async {
    emit(UpdatePhotoIsLoading());

    final response = await repository.updatePhoto(id, profileId);
    if (response is ResultSuccess) {
      if (response.data == null) {}
      emit(UpdatePhotoIsSucces(message: ""));

      print("Succes");
    } else if (response is ResultError) {
      emit(UpdatePhotoIsError(message: response.message));
      print("eror");
    }
  }
}
