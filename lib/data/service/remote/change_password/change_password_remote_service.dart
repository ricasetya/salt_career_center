import 'package:http/http.dart';
import 'package:telkom_career/base/base_config.dart';
import 'package:telkom_career/domain/model/request/change_password/change_password_request.dart';

class ChangePasswordRemoteService {
  Client client = Client();
  Future<Response> fetchChangePassword(ChangePasswordRequest request) async {
    final url = Uri.https(
      BaseConfig.BASE_DOMAIN_MOC,
      BaseConfig.BASE_PATH_MOC + BaseConfig.CHANGE_PASSWORD,
    );

    print(url);

    return client.post(url, body: request.toJson());
  }
}
