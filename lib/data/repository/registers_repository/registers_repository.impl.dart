import 'dart:convert';

import 'package:telkom_career/base/result_entity.dart';
import 'package:telkom_career/data/model/registers/registers_remote_response.dart';
import 'package:telkom_career/data/service/remote/registers/registers_remote_service.dart';
import 'package:telkom_career/domain/model/registers/registers_user_data.dart';
import 'package:telkom_career/domain/repository/registers/registers_repository.dart';

class RegistersRepositoryImpl implements RegistersRepository {
  final registersRemoteService = RegistersRemoteService();

  @override
  Future<ResultEntity<UserRegistersData>> registers(
      String email, String name, String password) async {
    try {
      final response =
          await registersRemoteService.registers(email, name, password);
      if (response.statusCode == 200) {
        var json = RegistersRemoteResponse.fromJson(jsonDecode(response.body))
            .toUserRegistersData();
        return ResultSuccess<UserRegistersData>(json);
      } else {
        return ResultError<UserRegistersData>(message: response.body);
      }
    } catch (e) {
      return ResultError(message: e.toString());
    }
  }
}
