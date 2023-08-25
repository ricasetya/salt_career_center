import 'dart:convert';

import 'package:http/http.dart';
import 'package:telkom_career/base/base_config.dart';
import 'package:telkom_career/domain/base/authentication_header_request.dart';
import 'package:telkom_career/domain/model/request/profile/profile_update_ability/profile_update_ability_request.dart';

class ProfileUpdateAbilityRemoteService {
  Client client = Client();
  Future<Response> updateProfileUpdateProfileRemoteService(
      AuthenticationHeaderRequest header,
      ProfileUpdateAbilityRequest request) async {
    final url = Uri.http(
      BaseConfig.BASE_DOMAIN_MOC,
      BaseConfig.BASE_PATH_MOC + BaseConfig.UPDATE_ABILITY,
    );

    print("URL : ${url.toString()}");
    print("request Profile Update Ability : ${request.toString()}");

    return client.post(
      url,
      body: jsonEncode(request.toJson()),
      //headers: {'Conten-Type': 'application/json'},
      headers: header.toHeader(),
    );
  }
}
