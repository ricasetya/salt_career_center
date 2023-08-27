// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';

part 'profile_update_language_request.g.dart';

@JsonSerializable()
class ProfileUpdateLanguageRequest {
  List<String>? language;
  ProfileUpdateLanguageRequest(
    this.language,
  );

  factory ProfileUpdateLanguageRequest.fromJson(Map<String, dynamic> json) =>
      _$ProfileUpdateLanguageRequestFromJson(json);

  Map<String, dynamic> toJson() {
    return _$ProfileUpdateLanguageRequestToJson(this);
  }
}
