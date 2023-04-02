import 'package:telkom_career/data/model/article/article_collection_remote_response.dart';
import 'dart:convert';
import 'package:http/http.dart';

class ArticleRemoteService {
  Client client = Client();
  final apikey = "7836484668b2444790b62b14a877ef91";

  Future<Response> fetchArticles(String country) async {
    Map<String, dynamic> queries = {};
    queries['apikey'] = apikey;
    queries['country'] = country;

    final url = Uri.http("newsapi.org", "/v2/top-headlines", queries);
    print("URL : ${url.toString()}");
    return client.get(url);
  }
}
