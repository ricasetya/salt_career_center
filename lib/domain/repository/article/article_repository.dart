import 'package:telkom_career/base/result_entity.dart';
import 'package:telkom_career/domain/model/data/article/article_data.dart';

abstract class ArticleRepository {
  Future<ResultEntity<List<ArticleData>>> fetchArticles(String country);
}
