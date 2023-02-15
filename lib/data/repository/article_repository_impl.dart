import 'dart:convert';

import 'package:telkom_career/domain/model/article/article_data.dart';
import 'package:telkom_career/base/result_entity.dart';
import 'package:telkom_career/data/model/article/article_collection_remote_response';
import 'package:telkom_career/data/service/remote/article_remote_service.dart';
import 'package:telkom_career/domain/repository/article/article_repository.dart';

class ArticleRepositoryImpl implements ArticleRepository {
  final articleRemoteService = ArticleRemoteService();

  @override
  Future<ResultEntity<List<ArticleData>>> fetchArticles(String country) async {
    try {
      print("FETCH 2 : REPO");
      final response = await articleRemoteService.fetchArticles(country);

      print("RESPONSE : ${response.statusCode}");

      if (response.statusCode == 200) {
        var a =
            ArticleCollectionRemoteResponse.fromJson(jsonDecode(response.body))
                    .articles
                    ?.map((e) => e.toArticleData())
                    .toList() ??
                List.empty();

        print("ARTICLE : ${a.length}");

        return ResultSucces<List<ArticleData>>(a);
      } else {
        return ResultError<List<ArticleData>>();
      }
    } catch (e) {
      print("ERROR : $e");
      return ResultError(message: "error fetch article");
    }
  }
}
