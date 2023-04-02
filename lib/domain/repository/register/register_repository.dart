import 'package:telkom_career/base/result_entity.dart';
import 'package:telkom_career/domain/model/register/register_user_data.dart';

abstract class RegisterRepository {
  Future<ResultEntity<UserRegisterData>> userRegister(
      String userName, String nama, String pass);
}
