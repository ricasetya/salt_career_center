import 'package:json_annotation/json_annotation.dart';

part 'register_request.g.dart';

@JsonSerializable()
class RegisterRequest {
  String? email;
  String? name;
  String? password;
  RegisterRequest(
    this.email,
    this.name,
    this.password,
  );

  factory RegisterRequest.fromJson(Map<String, dynamic> json) =>
      _$RegisterRequestFromJson(json);

  Map<String, dynamic> toJson() {
    return _$RegisterRequestToJson(this);
  }
}
