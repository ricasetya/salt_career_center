import 'package:telkom_career/base/result_entity.dart';
import 'package:telkom_career/domain/model/request/register/register_request.dart';

abstract class RegisterRepository {
  Future<ResultEntity> userRegister(RegisterRequest request);
}
