import 'dart:convert';
import 'package:telkom_career/base/result_entity.dart';
import 'package:telkom_career/data/model/logins/logins_remote_response.dart';
import 'package:telkom_career/data/service/remote/logins/logins_remote_service.dart';
import 'package:telkom_career/domain/model/logins/logins_user_data.dart';
import 'package:telkom_career/domain/repository/logins/logins_repository.dart';

class LoginsRepositoryImpl implements LoginsRepository {
  final loginsRemoteService = LoginsRemoteService();

  @override
  Future<ResultEntity<UserLoginsData>> userLogins(
      String userName, String pass) async {
    try {
      final response = await loginsRemoteService.loginsUser(userName, pass);
      if (response.statusCode == 200) {
        var json = LoginsRemoteResponse.fromJson(jsonDecode(response.body))
            .toUserLoginsData();
        return ResultSuccess<UserLoginsData>(json);
      } else {
        return ResultError<UserLoginsData>(message: response.body);
      }
    } catch (err) {
      return ResultError(message: err.toString());
    }
  }
}
