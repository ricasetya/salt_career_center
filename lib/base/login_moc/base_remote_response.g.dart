// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_remote_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseRemoteResponseMoc<Data> _$BaseRemoteResponseMocFromJson<Data>(
  Map<String, dynamic> json,
  Data Function(Object? json) fromJsonData,
) =>
    BaseRemoteResponseMoc<Data>(
      status: json['Status'] == null
          ? null
          : StatusResponse.fromJson(json['Status'] as Map<String, dynamic>),
      data: _$nullableGenericFromJson(json['Data'], fromJsonData),
    );

Map<String, dynamic> _$BaseRemoteResponseMocToJson<Data>(
  BaseRemoteResponseMoc<Data> instance,
  Object? Function(Data value) toJsonData,
) =>
    <String, dynamic>{
      'Status': instance.status,
      'Data': _$nullableGenericToJson(instance.data, toJsonData),
    };

T? _$nullableGenericFromJson<T>(
  Object? input,
  T Function(Object? json) fromJson,
) =>
    input == null ? null : fromJson(input);

Object? _$nullableGenericToJson<T>(
  T? input,
  Object? Function(T value) toJson,
) =>
    input == null ? null : toJson(input);
