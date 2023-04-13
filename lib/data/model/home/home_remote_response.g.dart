// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_remote_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeRemoteResponse _$HomeRemoteResponseFromJson(Map<String, dynamic> json) =>
    HomeRemoteResponse(
      json['name'] as String?,
      json['skill'] as String?,
      json['photo'] as String?,
      (json['jobs'] as List<dynamic>?)
          ?.map((e) => JobResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$HomeRemoteResponseToJson(HomeRemoteResponse instance) =>
    <String, dynamic>{
      'name': instance.name,
      'skill': instance.skill,
      'photo': instance.photo,
      'jobs': instance.jobs,
    };
