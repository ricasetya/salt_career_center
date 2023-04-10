import 'dart:convert';

import 'package:telkom_career/base/result_entity.dart';
import 'package:telkom_career/data/model/register/register_remote_response.dart';
import 'package:telkom_career/data/service/remote/register/register_remote_service.dart';
import 'package:telkom_career/domain/model/data/register/register_user_data.dart';
import 'package:telkom_career/domain/repository/register/register_repository.dart';

class RegisterRepositoryImpl implements RegisterRepository {
  final registerRemoteService = RegisterRemoteService();

  @override
  Future<ResultEntity<UserRegisterData>> userRegister(
      String userName, String nama, String pass) async {
    try {
      final response =
          await registerRemoteService.registerUser(userName, nama, pass);
      if (response.statusCode == 200) {
        var json = RegisterRemoteResponse.fromJson(jsonDecode(response.body))
            .toUserRegisterData();
        return ResultSuccess<UserRegisterData>(json);
      } else {
        return ResultError<UserRegisterData>(message: response.body);
      }
    } catch (err) {
      return ResultError(message: err.toString());
    }
  }
}
