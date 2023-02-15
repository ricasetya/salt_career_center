import 'package:json_annotation/json_annotation.dart';
import 'package:telkom_career/domain/model/article/article_data.dart';
import 'package:telkom_career/data/model/article/article_source_response.dart';
import 'package:telkom_career/domain/model/article/article_source_data.dart';

part 'article_response.g.dart';

abstract class ArticleRemoteResponseMapper {
  ArticleData toArticleData();
}

@JsonSerializable()
class ArticleRemoteResponse implements ArticleRemoteResponseMapper {
  String? author;
  String? title;
  String? description;
  String? url;
  String? urlToImage;
  String? publishedAt;
  String? content;
  ArticleSourceResponse? source;

  ArticleRemoteResponse({
    this.author,
    this.title,
    this.description,
    this.url,
    this.urlToImage,
    this.publishedAt,
    this.content,
    this.source,
  });

  factory ArticleRemoteResponse.fromJson(Map<String, dynamic> json) =>
      _$ArticleRemoteResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ArticleRemoteResponseToJson(this);

  @override
  ArticleData toArticleData() {
    return ArticleData(
        author ?? "",
        title ?? "",
        description ?? "",
        url ?? "",
        urlToImage ?? "",
        publishedAt ?? "",
        content ?? "",
        source?.toSourceData() ?? ArticleSourceData("", ""));
  }
}
