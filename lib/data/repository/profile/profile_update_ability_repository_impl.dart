import 'dart:convert';

import 'package:telkom_career/base/login_moc/base_remote_response.dart';
import 'package:telkom_career/base/result_entity.dart';
import 'package:telkom_career/data/service/remote/profile/profile_update_ability_remote_service.dart';
import 'package:telkom_career/domain/model/request/profile/profile_update_ability/profile_update_ability_request.dart';
import 'package:telkom_career/domain/base/authentication_header_request.dart';
import 'package:telkom_career/domain/repository/profile/profile_update_ability_repository.dart';

class ProfileUpdateAbilityRepositoryImpl
    implements ProfileUpdateAbilityRepository {
  final profileUpdateAbilityRepositoryImpl =
      ProfileUpdateAbilityRemoteService();

  @override
  Future<ResultEntity> updateProfileAbilityRepository(
      AuthenticationHeaderRequest header,
      ProfileUpdateAbilityRequest request) async {
    try {
      final response = await profileUpdateAbilityRepositoryImpl
          .updateProfileUpdateProfileRemoteService(header, request);

      print("STATUS UPDATE ABILITY : ${response.statusCode}");

      if (response.statusCode == 200) {
        BaseRemoteResponseMoc baseResponseUpdateAbility =
            BaseRemoteResponseMoc.fromJson(
                jsonDecode(response.body), (json) => null);
        if (baseResponseUpdateAbility.status == null) {
          return ResultError();
        } else if (baseResponseUpdateAbility.status?.code != 0) {
          return ResultError(
              message: baseResponseUpdateAbility.status?.message);
        } else {
          return ResultSuccess(baseResponseUpdateAbility.data);
        }
      } else {
        print("INI ERROR UPDATE ABILITY : ${response.body}");
        return ResultError(message: response.body);
      }
    } catch (e) {
      print("INI ERROR UPDATE ABILITY e : ${e.toString()}");
      return ResultError(message: e.toString());
    }
  }
}
