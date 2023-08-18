// ignore_for_file: avoid_print

import 'dart:convert';

import 'package:telkom_career/base/login_moc/base_remote_response.dart';
import 'package:telkom_career/base/result_entity.dart';
import 'package:telkom_career/data/service/remote/forget_password/forget_password_remote_service.dart';
import 'package:telkom_career/domain/model/request/forget_password/forget_password_request.dart';
import 'package:telkom_career/domain/repository/forget_password/forget_password_repository.dart';

class ForgetPasswordRepositoryImpl implements ForgetPasswordRepository {
  final forgetPasswordService = ForgetPasswordRemoteService();

  @override
  Future<ResultEntity> submitForgetPassword(
      ForgetPasswordRequest request) async {
    try {
      final response = await forgetPasswordService.postForgetPassword(request);

      print("STATUS CODE FORGET PASSWORD : ${response.statusCode}");

      if (response.statusCode == 200 || response.statusCode == 201) {
        BaseRemoteResponseMoc baseRemoteResponsePassword =
            BaseRemoteResponseMoc.fromJson(
                jsonDecode(response.body), (json) => null);

        if (baseRemoteResponsePassword.status == null) {
          return ResultError();
        } else if (baseRemoteResponsePassword.status?.code != 0) {
          return ResultError(
              message: baseRemoteResponsePassword.status?.message);
        } else {
          return ResultSuccess(baseRemoteResponsePassword.data);
        }
      } else {
        print("ini eror forget password : ${response.body}");
        return ResultError(message: response.body);
      }
    } catch (e) {
      print("ini eror forget password e : ${e.toString()}");
      return ResultError(message: "");
    }
    //throw UnimplementedError();
  }
}
