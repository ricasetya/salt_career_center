// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_work_experience_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddWorkExperienceRequest _$AddWorkExperienceRequestFromJson(
        Map<String, dynamic> json) =>
    AddWorkExperienceRequest(
      skillExperience: json['skillExperience'] as String?,
      name: json['name'] as String?,
      stillWorking: json['stillWorking'] as String?,
      startWork: json['startWork'] as String?,
      endWork: json['endWork'] as String?,
      description: json['description'] as String?,
    )..accesToken = json['accesToken'] as String;

Map<String, dynamic> _$AddWorkExperienceRequestToJson(
        AddWorkExperienceRequest instance) =>
    <String, dynamic>{
      'accesToken': instance.accesToken,
      'skillExperience': instance.skillExperience,
      'name': instance.name,
      'stillWorking': instance.stillWorking,
      'startWork': instance.startWork,
      'endWork': instance.endWork,
      'description': instance.description,
    };
