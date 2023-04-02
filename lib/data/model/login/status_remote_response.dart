// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';
import 'package:telkom_career/domain/model/login/login_status.dart';

part "status_remote_response.g.dart";

abstract class StatusRemoteResponseMapper {
  LoginStatus toLoginStatus();
}

@JsonSerializable()
class StatusRemoteResponse implements StatusRemoteResponseMapper {
  int? code;
  String? message;

  StatusRemoteResponse({
    this.code,
    this.message,
  });

  factory StatusRemoteResponse.fromJson(Map<String, dynamic> json) =>
      _$StatusRemoteResponseFromJson(json);

  Map<String, dynamic> toJson() => _$StatusRemoteResponseToJson(this);

  @override
  LoginStatus toLoginStatus() {
    return LoginStatus(code!, message ?? '');
  }
}
