// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';

part 'profile_update_ability_request.g.dart';

@JsonSerializable()
class ProfileUpdateAbilityRequest {
  List<String>? ability;
  ProfileUpdateAbilityRequest(
    this.ability,
  );

  factory ProfileUpdateAbilityRequest.fromJson(Map<String, dynamic> json) =>
      _$ProfileUpdateAbilityRequestFromJson(json);

  Map<String, dynamic> toJson() {
    return _$ProfileUpdateAbilityRequestToJson(this);
  }
}
