// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lists_jobs_remote_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListsJobsRemoteResponse _$ListsJobsRemoteResponseFromJson(
        Map<String, dynamic> json) =>
    ListsJobsRemoteResponse(
      id: json['id'] as String?,
      logo: json['logo'] as String?,
      position: json['position'] as String?,
      company: json['company'] as String?,
      address: json['address'] as String?,
      createdDate: json['createdDate'] as String?,
    );

Map<String, dynamic> _$ListsJobsRemoteResponseToJson(
        ListsJobsRemoteResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'logo': instance.logo,
      'position': instance.position,
      'company': instance.company,
      'address': instance.address,
      'createdDate': instance.createdDate,
    };
