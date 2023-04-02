import 'dart:convert';

import 'package:telkom_career/base/login_moc/base_remote_response.dart';
import 'package:telkom_career/data/model/login/login_remote_response.dart';
import 'package:telkom_career/data/service/remote/loginmoc/login_remote_servicemoc.dart';
import 'package:telkom_career/domain/model/request/login_request_moc/login_requestmoc.dart';
import 'package:telkom_career/domain/model/data/login_moc/login_user_data.dart';
import 'package:telkom_career/base/result_entity.dart';
import 'package:telkom_career/domain/repository/login_moc/login_repositorymoc.dart';

class LoginRepositoryImplMoc implements LoginRepositoryMoc {
  final remoteService = LoginRemoteServiceMoc();

  @override
  Future<ResultEntity<UserLoginDataMoc>> submitLogin(
      LoginRequest request) async {
    try {
      final response = await remoteService.submitLogin(request);
      if (response.statusCode == 200 || response.statusCode == 201) {
        BaseRemoteResponseMoc<LoginRemoteResponse> baseResponseObject =
            BaseRemoteResponseMoc<LoginRemoteResponse>.fromJson(
                jsonDecode(response.body),
                (json) =>
                    LoginRemoteResponse.fromJson(json as Map<String, dynamic>));

        LoginRemoteResponse.fromJson(jsonDecode(response.body));

        if (baseResponseObject.status == null) {
          return ResultError(message: baseResponseObject.status!.message);
        } else if (baseResponseObject.status?.code != 0) {
          return ResultError(message: baseResponseObject.status!.message);
        } else {
          return ResultSuccess(baseResponseObject.data!.toUserLoginDataMoc());
        }
      } else {
        return ResultError(message: "");
      }
    } catch (error) {
      return ResultError(message: "");
    }
  }
}
