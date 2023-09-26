// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forget_password_otp_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ForgetPasswordOtpRequest _$ForgetPasswordOtpRequestFromJson(
        Map<String, dynamic> json) =>
    ForgetPasswordOtpRequest(
      json['email'] as String,
      json['otp'] as String,
    );

Map<String, dynamic> _$ForgetPasswordOtpRequestToJson(
        ForgetPasswordOtpRequest instance) =>
    <String, dynamic>{
      'email': instance.email,
      'otp': instance.otp,
    };
