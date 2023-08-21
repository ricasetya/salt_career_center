// ignore_for_file: avoid_print, unnecessary_brace_in_string_interps

import 'dart:convert';

import 'package:http/http.dart';
import 'package:telkom_career/base/base_config.dart';
import 'package:telkom_career/domain/model/request/forget_password/forget_password_otp_request.dart';

class ForgetPasswordOtpRemoteService {
  Client client = Client();

  Future<Response> postForgetPasswordOtp(
      ForgetPasswordOtpRequest request) async {
    final url = Uri.http(
      BaseConfig.BASE_DOMAIN_MOC,
      BaseConfig.BASE_PATH_MOC + BaseConfig.FORGET_PASSWORD_OTP,
    );

    print("url: ${url}");
    print("ini request ${request.toJson()}");

    //print("URL FORGET PASS: ${url.toString()}");

    return client.post(
      url,
      body: jsonEncode(request.toJson()),
      //headers: {'Conten-Type': 'application/json'},
    );
  }
}
