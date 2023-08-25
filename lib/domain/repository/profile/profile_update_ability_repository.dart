import 'package:telkom_career/base/result_entity.dart';
import 'package:telkom_career/domain/base/authentication_header_request.dart';

abstract class ProfileUpdateAbilityRepository {
  Future<ResultEntity> updateProfileAbilityRepository(
      AuthenticationHeaderRequest header,
      ProfileUpdateAbilityRepository request);
}
