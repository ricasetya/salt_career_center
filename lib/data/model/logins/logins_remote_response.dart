// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';
import 'package:telkom_career/domain/model/logins/logins_user_data.dart';

part 'logins_remote_response.g.dart';

@JsonSerializable()
class LoginsRemoteResponse implements LoginsRemoteResponseMapper {
  String? token;
  LoginsRemoteResponse({
    this.token,
  });

  factory LoginsRemoteResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginsRemoteResponseFromJson(json);

  Map<String, dynamic> toJson() => _$LoginsRemoteResponseToJson(this);

  @override
  UserLoginsData toUserLoginsData() {
    return UserLoginsData(
      token: token ?? "",
    );
  }
}

abstract class LoginsRemoteResponseMapper {
  UserLoginsData toUserLoginsData();
}
