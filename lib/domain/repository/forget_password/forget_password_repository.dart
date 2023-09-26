// ignore_for_file: file_names

import 'package:telkom_career/base/result_entity.dart';
import 'package:telkom_career/domain/model/request/forget_password/forget_password_request.dart';

abstract class ForgetPasswordRepository {
  Future<ResultEntity> submitForgetPassword(ForgetPasswordRequest request);
}
