import 'package:telkom_career/base/result_entity.dart';
import 'package:telkom_career/domain/model/request/forget_password/forget_password_otp_request.dart';

abstract class ForgetPasswordOtpRepository {
  Future<ResultEntity> submitForgetPasswordOtp(
      ForgetPasswordOtpRequest request);
}
