import 'package:telkom_career/base/result_entity.dart';
import 'package:telkom_career/domain/model/request/forget_password/forget_password_update_request.dart';

abstract class ForgetPasswordUpdateRepository {
  Future<ResultEntity> submitForgetPasswordUpdate(
      ForgetPasswordUpdateRequest request);
}
