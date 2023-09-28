// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_add_education_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProfileAddEducationRequest _$ProfileAddEducationRequestFromJson(
        Map<String, dynamic> json) =>
    ProfileAddEducationRequest(
      json['level'] as String?,
      json['name'] as String?,
      json['major'] as String?,
      json['stillEducation'] as bool?,
      json['startEducation'] as String?,
      json['endEducation'] as String?,
      json['description'] as String?,
    );

Map<String, dynamic> _$ProfileAddEducationRequestToJson(
        ProfileAddEducationRequest instance) =>
    <String, dynamic>{
      'level': instance.level,
      'name': instance.name,
      'major': instance.major,
      'stillEducation': instance.stillEducation,
      'startEducation': instance.startEducation,
      'endEducation': instance.endEducation,
      'description': instance.description,
    };
