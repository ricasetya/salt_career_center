import 'package:json_annotation/json_annotation.dart';
import 'package:telkom_career/domain/model/data/profile/profile_change_password_data.dart';

part 'profile_change_password_remote_response.g.dart';

abstract class ProfileChangePasswordRemoteResponseMapper {
  ProfileChangePasswordData toProfileChangePasswordData();
}

@JsonSerializable()
class ProfileChangePasswordRemoteResponse
    implements ProfileChangePasswordRemoteResponseMapper {
  int? id;
  ProfileChangePasswordRemoteResponse({
    this.id,
  });

  factory ProfileChangePasswordRemoteResponse.fromJson(
          Map<String, dynamic> json) =>
      _$ProfileChangePasswordRemoteResponseFromJson(json);

  Map<String, dynamic> toJson() =>
      _$ProfileChangePasswordRemoteResponseToJson(this);

  @override
  ProfileChangePasswordData toProfileChangePasswordData() {
    return ProfileChangePasswordData(id);
  }
}
