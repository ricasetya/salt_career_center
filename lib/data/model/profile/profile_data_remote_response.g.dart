// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_data_remote_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProfileDataRemoteResponse _$ProfileDataRemoteResponseFromJson(
        Map<String, dynamic> json) =>
    ProfileDataRemoteResponse(
      email: json['email'] as String?,
      name: json['name'] as String?,
      photo: json['photo'] as String?,
      urlPhoto: json['urlPhoto'] as String?,
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
      ability:
          (json['ability'] as List<dynamic>?)?.map((e) => e as String).toList(),
      language: (json['language'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      cvResume: json['cvResume'] as String?,
      portofolio: json['portofolio'] as String?,
      urlPortofolio: json['urlPortofolio'] as String?,
      createdAt: json['createdAt'] as String?,
      updateAt: json['updateAt'] as String?,
    );

Map<String, dynamic> _$ProfileDataRemoteResponseToJson(
        ProfileDataRemoteResponse instance) =>
    <String, dynamic>{
      'email': instance.email,
      'name': instance.name,
      'photo': instance.photo,
      'urlPhoto': instance.urlPhoto,
      'skill': instance.skill,
      'phoneNumber': instance.phoneNumber,
      'workExperience': instance.workExperience,
      'education': instance.education,
      'ability': instance.ability,
      'language': instance.language,
      'cvResume': instance.cvResume,
      'portofolio': instance.portofolio,
      'urlPortofolio': instance.urlPortofolio,
      'createdAt': instance.createdAt,
      'updateAt': instance.updateAt,
    };
