// ignore_for_file: unnecessary_brace_in_string_interps, avoid_print

import 'package:http/http.dart';
import 'package:telkom_career/base/base_config.dart';
import 'package:telkom_career/domain/base/authentication_header_request.dart';

class ProfileDataRemoteService {
  Client client = Client();
  Future<Response> fetchProfileData(AuthenticationHeaderRequest header) async {
    final url = Uri.http(BaseConfig.BASE_DOMAIN_MOC,
        BaseConfig.BASE_PATH_MOC + BaseConfig.PROFILE_DATA);
    print("URL PROFILE : ${url}");

    // if (request.)

    return client.get(
      url,
      headers: header.toHeader(),
    );
  }
}
