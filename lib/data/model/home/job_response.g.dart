// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JobResponse _$JobResponseFromJson(Map<String, dynamic> json) => JobResponse(
      position: json['position'] as String?,
      company: json['company'] as String?,
      logo: json['logo'] as String?,
      address: json['address'] as String?,
      createDate: json['createDate'] as String?,
    );

Map<String, dynamic> _$JobResponseToJson(JobResponse instance) =>
    <String, dynamic>{
      'position': instance.position,
      'company': instance.company,
      'logo': instance.logo,
      'address': instance.address,
      'createDate': instance.createDate,
    };
