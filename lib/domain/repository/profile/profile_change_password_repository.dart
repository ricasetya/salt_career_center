import 'package:telkom_career/base/result_entity.dart';
import 'package:telkom_career/domain/base/authentication_header_request.dart';
import 'package:telkom_career/domain/model/data/profile/profile_change_password_data.dart';
import 'package:telkom_career/domain/model/request/profile/profile_change_password/profile_change_password_request.dart';

abstract class ProfileChangePasswordRepository {
  Future<ResultEntity<ProfileChangePasswordData>> submitProfileChangePassword(
      AuthenticationHeaderRequest header, ProfileChangePasswordRequest request);
}
