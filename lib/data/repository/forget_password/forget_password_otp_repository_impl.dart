// ignore_for_file: avoid_print

import 'dart:convert';

import 'package:telkom_career/base/login_moc/base_remote_response.dart';
import 'package:telkom_career/base/result_entity.dart';
import 'package:telkom_career/data/service/remote/forget_password/forget_password_otp_remote_service.dart';
import 'package:telkom_career/domain/model/request/forget_password/forget_password_otp_request.dart';
import 'package:telkom_career/domain/repository/forget_password/forget_password_otp_repository.dart';

class ForgetPasswordOtpRepositoryImpl implements ForgetPasswordOtpRepository {
  final forgetPasswordOtpService = ForgetPasswordOtpRemoteService();

  @override
  Future<ResultEntity> submitForgetPasswordOtp(
      ForgetPasswordOtpRequest request) async {
    try {
      final response =
          await forgetPasswordOtpService.postForgetPasswordOtp(request);

      print("STATUS CODE FORGET PASSWORD OTP : ${response.statusCode}");

      if (response.statusCode == 200 || response.statusCode == 201) {
        BaseRemoteResponseMoc baseRemoteResponsePasswordOtp =
            BaseRemoteResponseMoc.fromJson(
                jsonDecode(response.body), (json) => null);

        if (baseRemoteResponsePasswordOtp.status == null) {
          return ResultError();
        } else if (baseRemoteResponsePasswordOtp.status?.code != 0) {
          return ResultError(
              message: baseRemoteResponsePasswordOtp.status?.message);
        } else {
          return ResultSuccess(baseRemoteResponsePasswordOtp.data);
        }
      } else {
        print("ini eror forget password otp : ${response.body}");
        return ResultError(message: response.body);
      }
    } catch (e) {
      print("ini eror forget password otp e : ${e.toString()}");
      return ResultError(message: "");
    }
    //throw UnimplementedError();
  }
}
