// ignore_for_file: avoid_print

import 'dart:convert';

import 'package:telkom_career/base/login_moc/base_remote_response.dart';
import 'package:telkom_career/base/result_entity.dart';
import 'package:telkom_career/data/service/remote/profile/profile_change_password_remote_service.dart';
import 'package:telkom_career/domain/base/authentication_header_request.dart';
import 'package:telkom_career/domain/model/request/profile/profile_change_password/profile_change_password_request.dart';
import 'package:telkom_career/domain/repository/profile/profile_change_password_repository.dart';

class ProfileChangePasswordRepositoryImpl
    implements ProfileChangePasswordRepository {
  final profileChangePasswordRepositoryImpl =
      ProfileChangePasswordRemoteService();

  @override
  Future<ResultEntity> submitProfileChangePassword(
      AuthenticationHeaderRequest header,
      ProfileChangePasswordRequest request) async {
    try {
      final response = await profileChangePasswordRepositoryImpl
          .fetchProfileChangePassword(header, request);

      print("STATUS CHANGE PASSWORD : ${response.statusCode}");

      if (response.statusCode == 200) {
        BaseRemoteResponseMoc baseResponseChangePassword =
            BaseRemoteResponseMoc.fromJson(
                jsonDecode(response.body), (json) => null);
        if (baseResponseChangePassword.status == null) {
          return ResultError();
        } else if (baseResponseChangePassword.status?.code != 0) {
          return ResultError(
              message: baseResponseChangePassword.status?.message);
        } else {
          return ResultSuccess(baseResponseChangePassword.data);
        }
      } else {
        print("ini eror change password : ${response.body}");
        return ResultError(message: response.body);
      }
    } catch (e) {
      print("ini eror forget change password e : ${e.toString()}");
      return ResultError(message: e.toString());
    }
  }
}
