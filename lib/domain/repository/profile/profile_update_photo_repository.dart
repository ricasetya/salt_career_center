import 'package:telkom_career/base/result_entity.dart';
import 'package:telkom_career/domain/base/authentication_header_request.dart';
import 'package:telkom_career/domain/model/request/profile/profile_update_photo/profile_update_photo_request.dart';

abstract class ProfileUpdatePhotoRepository {
  Future<ResultEntity<ProfileUpdatePhotoRequest>> fetchProfileUpdatePhoto(
      ProfileUpdatePhotoRequest request, AuthenticationHeaderRequest header);
}
