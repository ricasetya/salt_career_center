// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:json_annotation/json_annotation.dart';
import 'package:telkom_career/base/login_moc/status_response.dart';

part 'base_remote_response.g.dart';

@JsonSerializable(genericArgumentFactories: true, includeIfNull: true)
class BaseRemoteResponseMoc<Data> {
  // @JsonKey(name: 'Status')
  StatusResponse? status;
  //@JsonKey(name: 'Data')
  Data? data;

  BaseRemoteResponseMoc({
    this.status,
    this.data,
  });

  factory BaseRemoteResponseMoc.fromJson(Map<String, dynamic> json,
          Data Function(Object? json) fromJsonData) =>
      _$BaseRemoteResponseMocFromJson(json, fromJsonData);

  Map<String, dynamic> toJson(Object Function(Data value) toJsonData) =>
      _$BaseRemoteResponseMocToJson(this, toJsonData);
}
