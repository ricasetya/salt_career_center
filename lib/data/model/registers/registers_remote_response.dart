import 'package:json_annotation/json_annotation.dart';
import 'package:telkom_career/domain/model/data/registers/registers_user_data.dart';

part 'registers_remote_response.g.dart';

@JsonSerializable()
class RegistersRemoteResponse implements RegistersRemoteResponseMapper {
  int? id;
  RegistersRemoteResponse({
    this.id,
  });

  factory RegistersRemoteResponse.fromJson(Map<String, dynamic> json) =>
      _$RegistersRemoteResponseFromJson(json);

  Map<String, dynamic> toJson() => _$RegistersRemoteResponseToJson(this);

  @override
  UserRegistersData toUserRegistersData() {
    return UserRegistersData(id: id!);
  }
}

abstract class RegistersRemoteResponseMapper {
  UserRegistersData toUserRegistersData();
}
