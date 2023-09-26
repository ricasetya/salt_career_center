// ignore_for_file: avoid_print

import 'dart:convert';

import 'package:telkom_career/base/login_moc/base_remote_response.dart';
import '../../../base/result_entity.dart';
import '../../../domain/model/request/register/register_request.dart';
import '../../../domain/repository/register/register_repository.dart';
import '../../service/remote/register/register_remote_service.dart';

class RegisterRepositoryImpl implements RegisterRepository {
  final registerRemoteService = RegisterRemoteService();

  @override
  Future<ResultEntity> userRegister(RegisterRequest request) async {
    try {
      final response = await registerRemoteService.register(request);
      if (response.statusCode == 200 || response.statusCode == 201) {
        BaseRemoteResponseMoc baseResponseObject =
            BaseRemoteResponseMoc.fromJson(
                jsonDecode(response.body), (json) => null);

        if (baseResponseObject.status == null) {
          return ResultError(message: baseResponseObject.status?.message);
        } else if (baseResponseObject.status?.code != 0) {
          return ResultError(message: baseResponseObject.status?.message);
        } else {
          return ResultSuccess(baseResponseObject.data);
        }
      } else {
        print("ini erornya ${response.body}");
        return ResultError(message: response.body);
      }
    } catch (e) {
      print("ini eror juga ${e.toString()}");
      return ResultError(message: e.toString());
    }
  }
}
