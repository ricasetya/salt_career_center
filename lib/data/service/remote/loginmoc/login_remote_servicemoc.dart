import 'package:http/http.dart';
import 'package:telkom_career/base/base_config.dart';
import '../../../../domain/model/request/login_request_moc/login_requestmoc.dart';

class LoginRemoteServiceMoc {
  Client client = Client();

  Future<Response> submitLogin(LoginRequest request) async {
    final url = Uri.https(
      BaseConfig.BASE_DOMAIN_MOC,
      BaseConfig.BASE_PATH_MOC + BaseConfig.LOGIN_MOC,
    );

    print(url);

    return client.post(url, body: request.toJson());
  }
}
