// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forget_password_update_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ForgetPasswordUpdateRequest _$ForgetPasswordUpdateRequestFromJson(
        Map<String, dynamic> json) =>
    ForgetPasswordUpdateRequest(
      json['email'] as String,
      json['newPassword'] as String,
      json['confirmPassword'] as String,
    );

Map<String, dynamic> _$ForgetPasswordUpdateRequestToJson(
        ForgetPasswordUpdateRequest instance) =>
    <String, dynamic>{
      'email': instance.email,
      'newPassword': instance.newPassword,
      'confirmPassword': instance.confirmPassword,
    };
