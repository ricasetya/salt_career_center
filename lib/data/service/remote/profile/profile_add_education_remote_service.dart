// ignore_for_file: avoid_print

import 'dart:convert';

import 'package:http/http.dart';
import 'package:telkom_career/base/base_config.dart';
import 'package:telkom_career/domain/base/authentication_header_request.dart';
import 'package:telkom_career/domain/model/request/profile/profile_add_education/profile_add_education_request.dart';

class ProfileAddEducationRemoteService {
  Client client = Client();
  Future<Response> submitProfileAddEducationRemoteService(
      AuthenticationHeaderRequest header,
      ProfileAddEducationRequest request) async {
    final url = Uri.http(
      BaseConfig.BASE_DOMAIN_MOC,
      BaseConfig.BASE_PATH_MOC + BaseConfig.ADD_EDUCATION,
    );

    print("URL : ${url.toString()}");
    print("request Profile Add Education : ${request.toString()}");

    return client.post(
      url,
      body: jsonEncode(request.toJson()),
      //headers: {'Conten-Type': 'application/json'},
      headers: header.toHeader(),
    );
  }
}
