import 'package:http/http.dart';
import 'package:telkom_career/base/base_config.dart';
import 'package:telkom_career/domain/base/authentication_header_request.dart';
//import 'package:telkom_career/domain/model/request/change_password/change_password_request.dart';

class ChangePasswordRemoteService {
  Client client = Client();
  Future<Response> fetchChangePassword(
      AuthenticationHeaderRequest request, String id) async {
    final url = Uri.https(
      BaseConfig.BASE_DOMAIN_MOC,
      BaseConfig.BASE_PATH_MOC + BaseConfig.CHANGE_PASSWORD,
    );

    // ignore: avoid_print
    print(url);

    return client.post(url);
  }
}
