
import 'article_source_data.dart';


class ArticleData {
  String author;
  String title;
  String description;
  String articleUrl;
  String bannerImage;
  String publishedAt;
  String sortDescription;
  ArticleSourceData sourceData;

  ArticleData(
    this.author,
    this.title,
    this.description,
    this.articleUrl,
    this.bannerImage,
    this.publishedAt,
    this.sortDescription,
    this.sourceData
  );
}
