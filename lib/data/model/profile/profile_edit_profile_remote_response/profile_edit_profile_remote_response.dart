import 'package:json_annotation/json_annotation.dart';
import 'package:telkom_career/domain/model/data/profile/profile_edit_profile_data.dart';

part 'profile_edit_profile_remote_response.g.dart';

abstract class ProfileEditProfileRemoteResponseMapper {
  ProfileEditProfileData toProfileEditProfileData();
}

@JsonSerializable()
class ProfileEditProfileRemoteResponse
    implements ProfileEditProfileRemoteResponseMapper {
  int? id;
  ProfileEditProfileRemoteResponse({
    this.id,
  });

  factory ProfileEditProfileRemoteResponse.fromJson(
          Map<String, dynamic> json) =>
      _$ProfileEditProfileRemoteResponseFromJson(json);

  Map<String, dynamic> toJson() =>
      _$ProfileEditProfileRemoteResponseToJson(this);

  @override
  ProfileEditProfileData toProfileEditProfileData() {
    return ProfileEditProfileData();
  }
}
