// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_remote_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginRemoteResponse _$LoginRemoteResponseFromJson(Map<String, dynamic> json) =>
    LoginRemoteResponse(
      json['Token'] as String?,
      json['Role'] as String?,
    );

Map<String, dynamic> _$LoginRemoteResponseToJson(
        LoginRemoteResponse instance) =>
    <String, dynamic>{
      'token': instance.Token,
      'role': instance.Role,
    };
