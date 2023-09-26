// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';

part 'profile_update_photo_request.g.dart';

@JsonSerializable()
class ProfileUpdatePhotoRequest {
  dynamic file;
  String url;
  ProfileUpdatePhotoRequest(
    this.file,
    this.url,
  );

  factory ProfileUpdatePhotoRequest.fromJson(Map<String, dynamic> json) =>
      _$ProfileUpdatePhotoRequestFromJson(json);

  Map<String, dynamic> toJson() {
    return _$ProfileUpdatePhotoRequestToJson(this);
  }
}
