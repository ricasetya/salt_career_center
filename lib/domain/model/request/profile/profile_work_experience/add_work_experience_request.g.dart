// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_work_experience_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddWorkExperienceRequest _$AddWorkExperienceRequestFromJson(
        Map<String, dynamic> json) =>
    AddWorkExperienceRequest(
      json['skillExperience'] as String?,
      json['name'] as String?,
      json['stillWorking'] as bool?,
      json['startWork'] as String?,
      json['endWork'] as String?,
      json['description'] as String?,
    );

Map<String, dynamic> _$AddWorkExperienceRequestToJson(
        AddWorkExperienceRequest instance) =>
    <String, dynamic>{
      'skillExperience': instance.skillExperience,
      'name': instance.name,
      'stillWorking': instance.stillWorking,
      'startWork': instance.startWork,
      'endWork': instance.endWork,
      'description': instance.description,
    };
