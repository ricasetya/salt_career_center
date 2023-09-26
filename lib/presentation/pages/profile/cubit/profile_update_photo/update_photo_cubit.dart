// ignore_for_file: public_member_api_docs, sort_constructors_first, depend_on_referenced_packages, avoid_print, unused_import
import 'dart:io';

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
    File image,
    //String id,
  ) async {
    emit(UpdatePhotoInitial());
    final token = await Commons().getUid();

    final response = await repository.fetchProfileUpdatePhoto(
      AuthenticationHeadersRequestUpload(token),
      image,
      // id,
    );

    if (response is ResultSuccess) {
      emit(
        UpdatePhotoIsSucces(message: 'UPDATE PHOTO SUCCESS'),
      );
    } else {
      emit(UpdatePhotoIsError(message: (response as ResultError).message));
    }
  }
}
