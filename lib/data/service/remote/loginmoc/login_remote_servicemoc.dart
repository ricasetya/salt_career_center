// ignore_for_file: avoid_print, duplicate_ignore

import 'dart:convert';

import 'package:http/http.dart';
import 'package:telkom_career/base/base_config.dart';
import '../../../../domain/model/request/login_request_moc/login_requestmoc.dart';

class LoginRemoteServiceMoc {
  Client client = Client();

  Future<Response> submitLogin(LoginRequest request) async {
    final url = Uri.http(BaseConfig.BASE_DOMAIN_MOC,
        BaseConfig.BASE_PATH_MOC + BaseConfig.LOGIN_MOC);

    // ignore: unnecessary_brace_in_string_interps, avoid_print
    print("url: ${url}");
    print("ini request ${request.toJson()}");

    return client.post(
      url,
      body: jsonEncode(request.toJson()),
      //headers: {'Content-Type': 'application/json'}
    );
  }
}
