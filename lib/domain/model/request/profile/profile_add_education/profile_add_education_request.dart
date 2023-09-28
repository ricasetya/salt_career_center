// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';

part 'profile_add_education_request.g.dart';

@JsonSerializable()
class ProfileAddEducationRequest {
  String? level;
  String? name;
  String? major;
  bool? stillEducation;
  String? startEducation;
  String? endEducation;
  String? description;
  ProfileAddEducationRequest(
    this.level,
    this.name,
    this.major,
    this.stillEducation,
    this.startEducation,
    this.endEducation,
    this.description,
  );

  factory ProfileAddEducationRequest.fromJson(Map<String, dynamic> json) =>
      _$ProfileAddEducationRequestFromJson(json);

  Map<String, dynamic> toJson() {
    return _$ProfileAddEducationRequestToJson(this);
  }
}
