// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lists_jobs_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListsJobsResponse _$ListsJobsResponseFromJson(Map<String, dynamic> json) =>
    ListsJobsResponse(
      listsJobs: (json['listsJobs'] as List<dynamic>?)
          ?.map((e) =>
              ListsJobsRemoteResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ListsJobsResponseToJson(ListsJobsResponse instance) =>
    <String, dynamic>{
      'listsJobs': instance.listsJobs,
    };
