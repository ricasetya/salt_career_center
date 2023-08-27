import 'dart:convert';

import 'package:telkom_career/base/login_moc/base_remote_response.dart';
import 'package:telkom_career/base/result_entity.dart';
import 'package:telkom_career/data/service/remote/profile/profile_update_language_remote_service.dart';
import 'package:telkom_career/domain/base/authentication_header_request.dart';
import 'package:telkom_career/domain/model/request/profile/profile_update_language/profile_update_language_request.dart';
import 'package:telkom_career/domain/repository/profile/profile_update_language_repository.dart';

class ProfileUpdateLanguageRepositoryImpl
    implements ProfileUpdateLanguageRepository {
  final profileUpdateLanguageRepositoryImpl =
      ProfileUpdateLanguageRemoteService();

  @override
  Future<ResultEntity> updateProfileLanguageRepository(
      AuthenticationHeaderRequest header,
      ProfileUpdateLanguageRequest request) async {
    try {
      final response = await profileUpdateLanguageRepositoryImpl
          .updateProfileLanguageRemoteService(header, request);

      print("STATUS UPDATE ABILITY : ${response.statusCode}");

      if (response.statusCode == 200) {
        BaseRemoteResponseMoc baseResponseUpdateLanguage =
            BaseRemoteResponseMoc.fromJson(
                jsonDecode(response.body), (json) => null);
        if (baseResponseUpdateLanguage.status == null) {
          return ResultError();
        } else if (baseResponseUpdateLanguage.status?.code != 0) {
          return ResultError(
              message: baseResponseUpdateLanguage.status?.message);
        } else {
          return ResultSuccess(baseResponseUpdateLanguage.data);
        }
      } else {
        print("INI ERROR UPDATE LANGUAGE : ${response.body}");
        return ResultError(message: response.body);
      }
    } catch (e) {
      print("INI ERROR UPDATE LANGUAGE e : ${e.toString()}");
      return ResultError(message: e.toString());
    }
  }
}
