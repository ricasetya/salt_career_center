import 'dart:convert';

import 'package:telkom_career/data/model/register/register_remote_response.dart';

import '../../../base/result_entity.dart';
import '../../../domain/model/data/register/register_user_data.dart';
import '../../../domain/model/request/register/register_request.dart';
import '../../../domain/repository/register/register_repository.dart';
import '../../service/remote/register/register_remote_service.dart';

class RegisterRepositoryImpl implements RegisterRepository {
  final registerRemoteService = RegisterRemoteService();

  @override
  Future<ResultEntity<UserRegisterData>> userRegister(
      RegisterRequest request) async {
    try {
      final response = await registerRemoteService.register(request);
      if (response.statusCode == 200 || response.statusCode == 201) {
        var a = RegisterRemoteResponse.fromJson(jsonDecode(response.body))
            .toUserRegisterData();
        return ResultSuccess<UserRegisterData>(a);
      } else {
        return ResultError(message: response.body);
      }
    } catch (e) {
      return ResultError(message: e.toString());
    }
  }
}
