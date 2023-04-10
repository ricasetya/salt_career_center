import 'package:telkom_career/base/result_entity.dart';
import 'package:telkom_career/domain/model/data/logins/logins_user_data.dart';

abstract class LoginsRepository {
  Future<ResultEntity<UserLoginsData>> userLogins(String userName, String pass);
}
