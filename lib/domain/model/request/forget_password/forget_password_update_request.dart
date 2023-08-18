// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';

part 'forget_password_update_request.g.dart';

@JsonSerializable()
class ForgetPasswordUpdateRequest {
  String email;
  String newPassword;
  String confirmPassword;
  ForgetPasswordUpdateRequest(
    this.email,
    this.newPassword,
    this.confirmPassword,
  );

  factory ForgetPasswordUpdateRequest.fromJson(Map<String, dynamic> json) =>
      _$ForgetPasswordUpdateRequestFromJson(json);

  Map<String, dynamic> toJson() {
    return _$ForgetPasswordUpdateRequestToJson(this);
  }
}
