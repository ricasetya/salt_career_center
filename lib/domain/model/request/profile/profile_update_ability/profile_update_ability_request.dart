// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';

part 'profile_update_ability_request.g.dart';

@JsonSerializable()
class ProfileUpdateAbilityRequest {
  String? ability1;
  String? ability2;
  String? ability3;
  String? ability4;
  String? ability5;
  String? ability6;
  String? ability7;
  String? ability8;
  String? ability9;
  String? ability10;
  ProfileUpdateAbilityRequest(
    this.ability1,
    this.ability2,
    this.ability3,
    this.ability4,
    this.ability5,
    this.ability6,
    this.ability7,
    this.ability8,
    this.ability9,
    this.ability10,
  );

  factory ProfileUpdateAbilityRequest.fromJson(Map<String, dynamic> json) =>
      _$ProfileUpdateAbilityRequestFromJson(json);

  Map<String, dynamic> toJson() {
    return _$ProfileUpdateAbilityRequestToJson(this);
  }
}
