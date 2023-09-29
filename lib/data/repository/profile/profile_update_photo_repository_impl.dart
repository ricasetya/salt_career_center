// ignore_for_file: avoid_print

import 'dart:convert';
import 'dart:io';
import 'package:telkom_career/base/login_moc/base_remote_response.dart';
import 'package:telkom_career/base/result_entity.dart';
import 'package:telkom_career/data/service/remote/profile/profile_update_photo_remote_service.dart';
import 'package:telkom_career/domain/base/authentication_header_request.dart';
import 'package:telkom_career/domain/repository/profile/profile_update_photo_repository.dart';

class ProfileUpdatePhotoRepositoryImpl implements ProfileUpdatePhotoRepository {
  final profileUpdatePhotoRepositoryImpl = ProfileUpdatePhotoRemoteService();

  @override
  Future<ResultEntity> fetchProfileUpdatePhoto(
    AuthenticationHeadersRequestUpload header,
    File? photo,
    // String id,
  ) async {
    try {
      final response = await profileUpdatePhotoRepositoryImpl
          .updateProfileUpdatePhotoRemoteService(
        header,
        photo,
        //   id,
      );

      print("STATUS UPLOAD IMAGE: ${response.statusCode}");
      print("BODY UPLOAD IMAGE: ${response.body}");
      print("RESPONSE HEADERS: ${response.headers}");

      if (response.statusCode == 200) {
        BaseRemoteResponseMoc baseResponseUpdatePhoto =
            BaseRemoteResponseMoc.fromJson(
          jsonDecode(response.body),
          (json) => null,
        );

        if (baseResponseUpdatePhoto.status == null) {
          return ResultError();
        } else if (baseResponseUpdatePhoto.status?.code != 0) {
          return ResultError(message: baseResponseUpdatePhoto.status?.message);
        } else {
          return ResultSuccess(baseResponseUpdatePhoto.data);
        }
      } else {
        print('INI ERROR UPDATE PHOTO : ${response.body}');
        return ResultError(message: response.body);
      }
    } catch (e) {
      print("INI ERROR UPDATE PHOTO e : ${e.toString()}");
      return ResultError(message: e.toString());
    }
  }
}
