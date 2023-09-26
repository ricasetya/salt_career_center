// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_update_language_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProfileUpdateLanguageRequest _$ProfileUpdateLanguageRequestFromJson(
        Map<String, dynamic> json) =>
    ProfileUpdateLanguageRequest(
      (json['language'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$ProfileUpdateLanguageRequestToJson(
        ProfileUpdateLanguageRequest instance) =>
    <String, dynamic>{
      'language': instance.language,
    };
