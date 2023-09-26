// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_remote_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginRemoteResponse _$LoginRemoteResponseFromJson(Map<String, dynamic> json) =>
    LoginRemoteResponse(
      token: json['token'] as String?,
      role: json['role'] as String?,
    );

Map<String, dynamic> _$LoginRemoteResponseToJson(
        LoginRemoteResponse instance) =>
    <String, dynamic>{
      'token': instance.token,
      'role': instance.role,
    };
