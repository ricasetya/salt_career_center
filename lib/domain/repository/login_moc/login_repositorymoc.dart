import 'package:telkom_career/base/result_entity.dart';
import 'package:telkom_career/domain/model/data/login_moc/login_user_data.dart';
import 'package:telkom_career/domain/model/request/login_request_moc/login_requestmoc.dart';

abstract class LoginRepositoryMoc {
  Future<ResultEntity<UserLoginDataMoc>> submitLogin(LoginRequest request);
}
