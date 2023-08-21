import 'package:telkom_career/base/result_entity.dart';
import 'package:telkom_career/domain/base/authentication_header_request.dart';
import 'package:telkom_career/domain/model/data/profile/profile_edit_profile_data.dart';
import 'package:telkom_career/domain/model/request/profile/profile_edit_profile/profile_edit_profile_request.dart';

abstract class ProfileEditProfileRepository {
  Future<ResultEntity<ProfileEditProfileData>>
      updateProfileEditProfileRepository(AuthenticationHeaderRequest header,
          ProfileEditProfileRequest request);
}
