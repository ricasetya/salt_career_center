import 'package:telkom_career/base/result_entity.dart';
import 'package:telkom_career/domain/base/authentication_header_request.dart';
import 'package:telkom_career/domain/model/request/profile/profile_update_language/profile_update_language_request.dart';

abstract class ProfileUpdateLanguageRepository {
  Future<ResultEntity> updateProfileLanguageRepository(
      AuthenticationHeaderRequest header, ProfileUpdateLanguageRequest request);
}
