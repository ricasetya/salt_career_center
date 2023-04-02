import 'package:http/http.dart';

class LoginsRemoteService {
  Client client = Client();

  Future<Response> loginsUser(String userName, String pass) async {
    final url = Uri.https("fakestoreapi.com", "/auth/login");
    //url = 'https://fakestoreapi.com/auth/login'
    return client.post(
      url,
      body: {
        "username": userName,
        "password": pass,
      },
    );
  }
}
