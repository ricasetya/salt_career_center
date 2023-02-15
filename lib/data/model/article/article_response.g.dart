// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ArticleRemoteResponse _$ArticleRemoteResponseFromJson(
        Map<String, dynamic> json) =>
    ArticleRemoteResponse(
      author: json['author'] as String?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      url: json['url'] as String?,
      urlToImage: json['urlToImage'] as String?,
      publishedAt: json['publishedAt'] as String?,
      content: json['content'] as String?,
      source: json['source'] == null
          ? null
          : ArticleSourceResponse.fromJson(
              json['source'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ArticleRemoteResponseToJson(
        ArticleRemoteResponse instance) =>
    <String, dynamic>{
      'author': instance.author,
      'title': instance.title,
      'description': instance.description,
      'url': instance.url,
      'urlToImage': instance.urlToImage,
      'publishedAt': instance.publishedAt,
      'content': instance.content,
      'source': instance.source,
    };
