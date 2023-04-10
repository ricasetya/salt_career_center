import 'package:json_annotation/json_annotation.dart';
import '../../../domain/model/data/article/article_source_data.dart';

part 'article_source_response.g.dart';

@JsonSerializable()
class ArticleSourceResponse implements ArticleSourceResponseMapper {
  String? id;
  String? name;
  ArticleSourceResponse({this.id, this.name});

  factory ArticleSourceResponse.fromJson(Map<String, dynamic> json) =>
      _$ArticleSourceResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ArticleSourceResponseToJson(this);

  @override
  ArticleSourceData toSourceData() {
    return ArticleSourceData(id ?? "", name ?? "");
  }
}

abstract class ArticleSourceResponseMapper {
  ArticleSourceData toSourceData();
}
