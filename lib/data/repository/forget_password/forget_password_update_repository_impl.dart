// ignore_for_file: avoid_print

import 'dart:convert';

import 'package:telkom_career/base/login_moc/base_remote_response.dart';
import 'package:telkom_career/base/result_entity.dart';
import 'package:telkom_career/data/service/remote/forget_password/forget_password_update_remote_service.dart';
import 'package:telkom_career/domain/model/request/forget_password/forget_password_update_request.dart';
import 'package:telkom_career/domain/repository/forget_password/forget_password_update_repository.dart';

class ForgetPasswordUpdateRepositoryImpl
    implements ForgetPasswordUpdateRepository {
  final forgetPasswordUpdate = ForgetPasswordUpdateRemoteService();

  @override
  Future<ResultEntity> submitForgetPasswordUpdate(
      ForgetPasswordUpdateRequest request) async {
    try {
      final response =
          await forgetPasswordUpdate.putForgetPasswordUpdate(request);

      print("STATUS CODE FORGET PASSWWORD UPDATE : ${response.statusCode}");

      if (response.statusCode == 200 || response.statusCode == 201) {
        BaseRemoteResponseMoc baseRemoteResponsePasswordUpdate =
            BaseRemoteResponseMoc.fromJson(
                jsonDecode(response.body), (json) => null);

        if (baseRemoteResponsePasswordUpdate.status == null) {
          return ResultError();
        } else if (baseRemoteResponsePasswordUpdate.status?.code != 0) {
          return ResultError(
              message: baseRemoteResponsePasswordUpdate.status?.message);
        } else {
          return ResultSuccess(baseRemoteResponsePasswordUpdate.data);
        }
      } else {
        print("Ini error forget password update : ${response.body}");
        return ResultError(message: response.body);
      }
    } catch (e) {
      print("Ini error Forget Password Update e : ${e.toString()}");
      return ResultError(message: "");
    }
  }
}
