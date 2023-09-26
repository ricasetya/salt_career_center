// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'work_experience_data_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WorkExperienceDataResponse _$WorkExperienceDataResponseFromJson(
        Map<String, dynamic> json) =>
    WorkExperienceDataResponse(
      Id: json['Id'] as String?,
      SkillExperience: json['SkillExperience'] as String?,
      Name: json['Name'] as String?,
      StillWorking: json['StillWorking'] as bool?,
      DateRange: json['DateRange'] == null
          ? null
          : DateRangeRemoteResponse.fromJson(
              json['DateRange'] as Map<String, dynamic>),
      Description: json['Description'] as String?,
    );

Map<String, dynamic> _$WorkExperienceDataResponseToJson(
        WorkExperienceDataResponse instance) =>
    <String, dynamic>{
      'Id': instance.Id,
      'SkillExperience': instance.SkillExperience,
      'Name': instance.Name,
      'StillWorking': instance.StillWorking,
      'DateRange': instance.DateRange,
      'Description': instance.Description,
    };
