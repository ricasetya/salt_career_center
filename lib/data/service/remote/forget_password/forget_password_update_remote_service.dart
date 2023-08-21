// ignore_for_file: avoid_print, unnecessary_brace_in_string_interps

import 'dart:convert';

import 'package:http/http.dart';
import 'package:telkom_career/base/base_config.dart';
import 'package:telkom_career/domain/model/request/forget_password/forget_password_update_request.dart';

class ForgetPasswordUpdateRemoteService {
  Client client = Client();

  Future<Response> putForgetPasswordUpdate(
      ForgetPasswordUpdateRequest request) async {
    final url = Uri.http(
      BaseConfig.BASE_DOMAIN_MOC,
      BaseConfig.BASE_PATH_MOC + BaseConfig.FORGET_PASSWORD_UPDATE,
    );

    print("url: ${url}");
    print("ini request ${request.toJson()}");

    //print("URL FORGET PASS: ${url.toString()}");

    return client.put(
      url,
      body: jsonEncode(request.toJson()),
      //headers: {'Conten-Type': 'application/json'},
    );
  }
}
