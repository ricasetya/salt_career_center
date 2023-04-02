import 'package:http/http.dart';

class RegistersRemoteService {
  Client client = Client();

  Future<Response> registers(String email, String name, String password) async {
    final url = Uri.https('fakestoreapi.com', '/users');
    return client.post(url, body: {
      'email': email,
      'name': name,
      'password': password,
    });
  }
}
