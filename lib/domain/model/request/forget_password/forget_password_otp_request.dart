import 'package:json_annotation/json_annotation.dart';

part 'forget_password_otp_request.g.dart';

@JsonSerializable()
class ForgetPasswordOtpRequest {
  String email;
  String otp;
  ForgetPasswordOtpRequest(
    this.email,
    this.otp,
  );

  factory ForgetPasswordOtpRequest.fromJson(Map<String, dynamic> json) =>
      _$ForgetPasswordOtpRequestFromJson(json);

  Map<String, dynamic> toJson() {
    return _$ForgetPasswordOtpRequestToJson(this);
  }
}
