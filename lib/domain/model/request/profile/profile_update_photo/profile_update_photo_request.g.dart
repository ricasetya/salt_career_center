// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_update_photo_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProfileUpdatePhotoRequest _$ProfileUpdatePhotoRequestFromJson(
        Map<String, dynamic> json) =>
    ProfileUpdatePhotoRequest(
      json['file'],
      json['url'] as String,
    );

Map<String, dynamic> _$ProfileUpdatePhotoRequestToJson(
        ProfileUpdatePhotoRequest instance) =>
    <String, dynamic>{
      'file': instance.file,
      'url': instance.url,
    };
