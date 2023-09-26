// ignore_for_file: avoid_print

import 'dart:convert';

import 'package:http/http.dart';
import 'package:telkom_career/base/base_config.dart';
import 'package:telkom_career/domain/base/authentication_header_request.dart';
import 'package:telkom_career/domain/model/request/profile/profile_change_password/profile_change_password_request.dart';

class ProfileChangePasswordRemoteService {
  Client client = Client();
  Future<Response> fetchProfileChangePassword(
      AuthenticationHeaderRequest header,
      ProfileChangePasswordRequest request) async {
    final url = Uri.http(
      BaseConfig.BASE_DOMAIN_MOC,
      BaseConfig.BASE_PATH_MOC + BaseConfig.CHANGE_PASSWORD,
    );

    print("URL : ${url.toString()}");
    print("request ProfileChange Password ${request.toString()}");

    return client.post(
      url,
      body: jsonEncode(request.toJson()),
      //headers: {'Conten-Type': 'application/json'},
      headers: header.toHeader(),
    );
  }
}
