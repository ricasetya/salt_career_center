// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_edit_profile_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProfileEditProfileRequest _$ProfileEditProfileRequestFromJson(
        Map<String, dynamic> json) =>
    ProfileEditProfileRequest(
      json['name'] as String?,
      json['skill'] as String?,
      json['phoneNumber'] as String?,
    );

Map<String, dynamic> _$ProfileEditProfileRequestToJson(
        ProfileEditProfileRequest instance) =>
    <String, dynamic>{
      'name': instance.name,
      'skill': instance.skill,
      'phoneNumber': instance.phoneNumber,
    };
