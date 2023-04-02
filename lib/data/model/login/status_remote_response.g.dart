// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'status_remote_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StatusRemoteResponse _$StatusRemoteResponseFromJson(
        Map<String, dynamic> json) =>
    StatusRemoteResponse(
      code: json['code'] as int?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$StatusRemoteResponseToJson(
        StatusRemoteResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
    };
