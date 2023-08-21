// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';

part 'profile_change_password_request.g.dart';

@JsonSerializable()
class ProfileChangePasswordRequest {
  String oldPassword;
  String newPassword;
  String confirmPassword;
  ProfileChangePasswordRequest(
    this.oldPassword,
    this.newPassword,
    this.confirmPassword,
  );

  factory ProfileChangePasswordRequest.fromJson(Map<String, dynamic> json) =>
      _$ProfileChangePasswordRequestFromJson(json);

  Map<String, dynamic> toJson() {
    return _$ProfileChangePasswordRequestToJson(this);
  }
}
