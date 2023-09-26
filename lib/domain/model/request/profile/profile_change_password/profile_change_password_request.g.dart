// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_change_password_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProfileChangePasswordRequest _$ProfileChangePasswordRequestFromJson(
        Map<String, dynamic> json) =>
    ProfileChangePasswordRequest(
      json['oldPassword'] as String,
      json['newPassword'] as String,
      json['confirmPassword'] as String,
    );

Map<String, dynamic> _$ProfileChangePasswordRequestToJson(
        ProfileChangePasswordRequest instance) =>
    <String, dynamic>{
      'oldPassword': instance.oldPassword,
      'newPassword': instance.newPassword,
      'confirmPassword': instance.confirmPassword,
    };
