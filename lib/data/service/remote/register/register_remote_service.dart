import 'dart:html';

import 'package:http/http.dart';

class RegisterRemoteService {
  Client client = Client();

  Future<Response> registerUser(
      String userName, String nama, String pass) async {
    final url = Uri.https("fakestoreapi.com", "/auth/login");
    return client.post(url, body: {
      "username": userName,
      "nama": nama,
      "password": pass,
    });
  }
}
