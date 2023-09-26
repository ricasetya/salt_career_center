// ignore_for_file: unnecessary_brace_in_string_interps, avoid_print

import 'dart:convert';

import 'package:http/http.dart';
import 'package:telkom_career/base/base_config.dart';
import 'package:telkom_career/domain/model/request/forget_password/forget_password_request.dart';

class ForgetPasswordRemoteService {
  Client client = Client();

  Future<Response> postForgetPassword(ForgetPasswordRequest request) async {
    final url = Uri.http(
      BaseConfig.BASE_DOMAIN_MOC,
      BaseConfig.BASE_PATH_MOC + BaseConfig.FORGET_PASSWORD,
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
