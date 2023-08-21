// ignore_for_file: avoid_print

import 'dart:convert';

import 'package:http/http.dart';
import 'package:telkom_career/base/base_config.dart';
import 'package:telkom_career/domain/base/authentication_header_request.dart';
import 'package:telkom_career/domain/model/request/profile/profile_edit_profile/profile_edit_profile_request.dart';

class ProfileEditProfileRemoteService {
  Client client = Client();
  Future<Response> updateProfileEditProfileRemoteService(
      AuthenticationHeaderRequest header,
      ProfileEditProfileRequest request) async {
    final url = Uri.http(
      BaseConfig.BASE_DOMAIN_MOC,
      BaseConfig.BASE_PATH_MOC + BaseConfig.UPDATE_PROFILE,
    );

    print("URL : ${url.toString()}");
    print("request Profile Edit Profile ${request.toString()}");

    return client.post(
      url,
      body: jsonEncode(request.toJson()),
      //headers: {'Conten-Type': 'application/json'},
      headers: header.toHeader(),
    );
  }
}
