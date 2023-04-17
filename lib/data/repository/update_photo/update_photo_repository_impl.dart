import 'dart:convert';

import 'package:telkom_career/base/login_moc/base_remote_response.dart';
import 'package:telkom_career/base/result_entity.dart';
import 'package:telkom_career/data/service/remote/update_photo/update_photo_remote_service.dart';
import 'package:telkom_career/domain/repository/update_photo/update_photo_repository.dart';

class UpdatePhotoRepositoryImpl implements UpdatePhotoRepository {
  final updatePhotoRemoteService = UpdatePhotoRemoteservice();

  @override
  Future<ResultEntity> updatePhoto(String id, String profileId) async {
    try {
      final response =
          await updatePhotoRemoteService.updatePhoto(id, profileId);
      if (response.statusCode == 200 || response.statusCode == 201) {
        BaseRemoteResponseMoc baseRemoteResponsePhoto =
            BaseRemoteResponseMoc.fromJson(
                jsonDecode(response.body), (json) => null);
        if (baseRemoteResponsePhoto.status == null) {
          return ResultError();
        } else if (baseRemoteResponsePhoto.status?.code != 0) {
          return ResultError(message: baseRemoteResponsePhoto.status?.message);
        } else {
          return ResultSuccess(baseRemoteResponsePhoto.data);
        }
      } else {
        return ResultError(message: "");
      }
    } catch (error) {
      return ResultError(message: "");
    }
  }
}
