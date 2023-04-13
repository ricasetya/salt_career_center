// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';
import 'package:telkom_career/domain/model/data/change_password/change_password_data.dart';

part 'change_password_remote_response.g.dart';

abstract class ChangePasswordRemoteResponseMapper {
  ChangePasswordData toChangePasswordData();
}

@JsonSerializable()
class ChangePasswordRemoteResponse
    implements ChangePasswordRemoteResponseMapper {
  String? id;
  ChangePasswordRemoteResponse({
    this.id,
  });

  factory ChangePasswordRemoteResponse.fromJson(Map<String, dynamic> json) =>
      _$ChangePasswordRemoteResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ChangePasswordRemoteResponseToJson(this);

  @override
  ChangePasswordData toChangePasswordData() {
    return ChangePasswordData(id: id);
  }
}
