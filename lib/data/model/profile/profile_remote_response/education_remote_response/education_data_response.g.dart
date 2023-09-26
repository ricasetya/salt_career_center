// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'education_data_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EducationDataResponse _$EducationDataResponseFromJson(
        Map<String, dynamic> json) =>
    EducationDataResponse(
      Id: json['Id'] as String?,
      Level: json['Level'] as String?,
      Name: json['Name'] as String?,
      Major: json['Major'] as String?,
      SkillEducation: json['SkillEducation'] as bool?,
      DateRange: json['DateRange'] == null
          ? null
          : DateRangeRemoteResponse.fromJson(
              json['DateRange'] as Map<String, dynamic>),
      Description: json['Description'] as String?,
    );

Map<String, dynamic> _$EducationDataResponseToJson(
        EducationDataResponse instance) =>
    <String, dynamic>{
      'Id': instance.Id,
      'Level': instance.Level,
      'Name': instance.Name,
      'Major': instance.Major,
      'SkillEducation': instance.SkillEducation,
      'DateRange': instance.DateRange,
      'Description': instance.Description,
    };
