// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';

part 'profile_edit_profile_request.g.dart';

@JsonSerializable()
class ProfileEditProfileRequest {
  String? name;
  String? skill;
  String? phoneNumber;
  ProfileEditProfileRequest(
    this.name,
    this.skill,
    this.phoneNumber,
  );

  factory ProfileEditProfileRequest.fromJson(Map<String, dynamic> json) =>
      _$ProfileEditProfileRequestFromJson(json);

  Map<String, dynamic> toJson() {
    return _$ProfileEditProfileRequestToJson(this);
  }
}
