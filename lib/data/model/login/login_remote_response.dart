import 'package:json_annotation/json_annotation.dart';
import 'package:telkom_career/domain/model/data/login_moc/login_user_data.dart';

part 'login_remote_response.g.dart';

abstract class LoginRemoteResponseMapper {
  UserLoginDataMoc toUserLoginDataMoc();
}

@JsonSerializable()
class LoginRemoteResponse implements LoginRemoteResponseMapper {
  String? Token;
  String? Role;

  LoginRemoteResponse(this.Token, this.Role);

  factory LoginRemoteResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginRemoteResponseFromJson(json);

  Map<String, dynamic> toJson() => _$LoginRemoteResponseToJson(this);

  @override
  UserLoginDataMoc toUserLoginDataMoc() {
    return UserLoginDataMoc(Token ?? "", Role ?? "");
  }
}
