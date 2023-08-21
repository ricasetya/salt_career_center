// ignore_for_file: avoid_print

import 'dart:convert';

import 'package:telkom_career/base/login_moc/base_remote_response.dart';
import 'package:telkom_career/base/result_entity.dart';
import 'package:telkom_career/data/model/profile/profile_change_password_remote_response/profile_change_password_remote_response.dart';
import 'package:telkom_career/data/service/remote/profile/profile_change_password_remote_service.dart';
import 'package:telkom_career/domain/base/authentication_header_request.dart';
import 'package:telkom_career/domain/model/request/profile/profile_change_password/profile_change_password_request.dart';
import 'package:telkom_career/domain/model/data/profile/profile_change_password_data.dart';
import 'package:telkom_career/domain/repository/profile/profile_change_password_repository.dart';

class ProfileChangePasswordRepositoryImpl
    implements ProfileChangePasswordRepository {
  final profileChangePasswordRepositoryImpl =
      ProfileChangePasswordRemoteService();

  @override
  Future<ResultEntity<ProfileChangePasswordData>> submitProfileChangePassword(
      AuthenticationHeaderRequest header,
      ProfileChangePasswordRequest request) async {
    try {
      final response = await profileChangePasswordRepositoryImpl
          .fetchProfileChangePassword(header, request);

      print("STATUS CHANGE PASSWORD : ${response.statusCode}");

      if (response.statusCode == 200) {
        BaseRemoteResponseMoc<ProfileChangePasswordRemoteResponse>
            baseResponseChangePassword =
            BaseRemoteResponseMoc<ProfileChangePasswordRemoteResponse>.fromJson(
          jsonDecode(response.body),
          (json) => ProfileChangePasswordRemoteResponse.fromJson(
              json as Map<String, dynamic>),
        );

        ProfileChangePasswordRemoteResponse.fromJson(
          jsonDecode(response.body),
        );

        if (baseResponseChangePassword.status == null) {
          return ResultError(
              //message: baseResponseChangePassword.status?.message
              );
        } else if (baseResponseChangePassword.status?.code != 0) {
          return ResultError(
              message: baseResponseChangePassword.status?.message);
        } else {
          return ResultSuccess(
              baseResponseChangePassword.data!.toProfileChangePasswordData());
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
