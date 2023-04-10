import 'package:json_annotation/json_annotation.dart';
import 'package:telkom_career/data/model/article/article_response.dart';
import 'package:telkom_career/domain/model/data/article/article_data.dart';

part 'article_collection_remote_response.g.dart';

@JsonSerializable()
class ArticleCollectionRemoteResponse
    implements ArticleCollectionRemoteResponseMapper {
  String? status;
  int? totalResult;
  List<ArticleRemoteResponse>? articles;

  ArticleCollectionRemoteResponse(
      {this.status, this.totalResult, this.articles});

  factory ArticleCollectionRemoteResponse.fromJson(Map<String, dynamic> json) =>
      _$ArticleCollectionRemoteResponseFromJson(json);

  Map<String, dynamic> toJson() =>
      _$ArticleCollectionRemoteResponseToJson(this);

  @override
  List<ArticleData> toArticleData() {
    return articles?.map((e) => e.toArticleData()).toList() ?? List.empty();
  }
}

abstract class ArticleCollectionRemoteResponseMapper {
  List<ArticleData> toArticleData();
}
