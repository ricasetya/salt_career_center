// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_data_remote_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProfileDataRemoteResponse _$ProfileDataRemoteResponseFromJson(
        Map<String, dynamic> json) =>
    ProfileDataRemoteResponse(
      name: json['name'] as String?,
      photo: json['photo'] as String?,
      skill: json['skill'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      workExperience: (json['workExperience'] as List<dynamic>?)
          ?.map((e) =>
              WorkExperienceDataResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      education: (json['education'] as List<dynamic>?)
          ?.map(
              (e) => EducationDataResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      ability: (json['ability'] as List<dynamic>?)
          ?.map((e) => AbilityDataResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      language: (json['language'] as List<dynamic>?)
          ?.map((e) => LanguageDataResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      cvResume: json['cvResume'] as String?,
      portofolio: json['portofolio'] as String?,
    );

Map<String, dynamic> _$ProfileDataRemoteResponseToJson(
        ProfileDataRemoteResponse instance) =>
    <String, dynamic>{
      'name': instance.name,
      'photo': instance.photo,
      'skill': instance.skill,
      'phoneNumber': instance.phoneNumber,
      'workExperience': instance.workExperience,
      'education': instance.education,
      'ability': instance.ability,
      'language': instance.language,
      'cvResume': instance.cvResume,
      'portofolio': instance.portofolio,
    };
