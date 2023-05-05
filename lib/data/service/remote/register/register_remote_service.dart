//import 'dart:html';

import 'package:http/http.dart';
import 'package:telkom_career/base/base_config.dart';
import 'package:telkom_career/domain/model/request/register/register_request.dart';

class RegisterRemoteService {
  Client client = Client();

  Future<Response> register(RegisterRequest request) async {
    final url = Uri.https(BaseConfig.BASE_DOMAIN_MOC,
        BaseConfig.BASE_PATH_MOC + BaseConfig.REGISTER_MOC);
    return client.post(url, body: request.toJson());
  }
}










// class RegisterRemoteService {
//   Client client = Client();

//   Future<Response> registerUser(
//       String userName, String nama, String pass) async {
//     final url = Uri.https("fakestoreapi.com", "/auth/login");
//     return client.post(url, body: {
//       "username": userName,
//       "nama": nama,
//       "password": pass,
//     });
//   }
// }
