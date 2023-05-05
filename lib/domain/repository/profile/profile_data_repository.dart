import 'package:telkom_career/base/result_entity.dart';
import 'package:telkom_career/domain/base/authentication_header_request.dart';
import 'package:telkom_career/domain/model/data/profile/profile_data.dart';

abstract class ProfileDataRepository {
  Future<ResultEntity<ProfileData>> fetchProfileData(
      AuthenticationHeaderRequest header);
}
