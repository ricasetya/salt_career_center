// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article_collection_remote_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ArticleCollectionRemoteResponse _$ArticleCollectionRemoteResponseFromJson(
        Map<String, dynamic> json) =>
    ArticleCollectionRemoteResponse(
      status: json['status'] as String?,
      totalResult: json['totalResult'] as int?,
      articles: (json['articles'] as List<dynamic>?)
          ?.map(
              (e) => ArticleRemoteResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ArticleCollectionRemoteResponseToJson(
        ArticleCollectionRemoteResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'totalResult': instance.totalResult,
      'articles': instance.articles,
    };
