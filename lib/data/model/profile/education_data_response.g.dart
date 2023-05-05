// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'education_data_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EducationDataResponse _$EducationDataResponseFromJson(
        Map<String, dynamic> json) =>
    EducationDataResponse(
      name: json['name'] as String?,
      startEducation: json['startEducation'] as String?,
      endEducation: json['endEducation'] as String?,
      skillExperience: json['skillExperience'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$EducationDataResponseToJson(
        EducationDataResponse instance) =>
    <String, dynamic>{
      'name': instance.name,
      'startEducation': instance.startEducation,
      'endEducation': instance.endEducation,
      'skillExperience': instance.skillExperience,
      'description': instance.description,
    };
