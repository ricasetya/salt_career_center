import 'dart:convert';
import 'package:http/http.dart';

class LoginRemoteService {
  Client client = Client();
  final apikey = "";

  Future<Response> fetchLogins(String country) async {
    Map<String, dynamic> queries = {};
    queries['apikey'] = apikey;
    queries['country'] = country;

    final url = Uri.https("", "/v2top-headlines", queries);
    print("URL : ${url.toString()}");
    return client.post(url);
  }

  Future<Response> fetchLoginStatuses(String country) async {
    Map<String, dynamic> queries = {};
    queries['apikey'] = apikey;
    queries['country'] = country;

    final url = Uri.https("", "/v2/top-headlines", queries);
    print("URL : ${url.toString()}");
    return client.post(url);
  }
}
