// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';
import 'package:telkom_career/domain/model/register/register_user_data.dart';

part 'register_remote_response.g.dart';

@JsonSerializable()
class RegisterRemoteResponse implements RegisterRemoteResponseMapper {
  String? username;
  String? nama;
  String? password;
  RegisterRemoteResponse({
    this.username,
    this.nama,
    this.password,
  });

  factory RegisterRemoteResponse.fromJson(Map<String, dynamic> json) =>
      _$RegisterRemoteResponseFromJson(json);

  Map<String, dynamic> toJson() => _$RegisterRemoteResponseToJson(this);

  @override
  UserRegisterData toUserRegisterData() {
    return UserRegisterData(
      username: username ?? "",
      nama: nama ?? "",
      password: password ?? "",
    );
  }
}

abstract class RegisterRemoteResponseMapper {
  UserRegisterData toUserRegisterData();
}
