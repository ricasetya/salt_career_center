import 'package:http/http.dart';
import 'package:telkom_career/base/base_config.dart';

class RegistersRemoteService {
  Client client = Client();

  Future<Response> registers(String email, String name, String password) async {
    final url = Uri.https(BaseConfig.BASE_DOMAIN_MOC,
        BaseConfig.BASE_PATH_MOC + BaseConfig.REGISTER_MOC);
    return client
        .post(url, body: {'email': email, 'name': name, 'password': password});

    // final url = Uri.https('fakestoreapi.com', '/users');
    // return client.post(url, body: {
    //   'email': email,
    //   'name': name,
    //   'password': password,
    // });
  }
}
