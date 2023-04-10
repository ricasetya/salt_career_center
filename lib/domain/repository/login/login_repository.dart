import 'package:telkom_career/base/result_entity.dart';
import 'package:telkom_career/domain/model/data/login/login_data.dart';

abstract class LoginRepository {
  Future<ResultEntity<List<LoginData>>> fetchLogins(String country);
}
