// ignore_for_file: public_member_api_docs, sort_constructors_first
//import 'package:json_annotation/json_annotation.dart';

class UserLoginDataMoc {
  //@JsonKey(name: 'Token')
  String token;
  //@JsonKey(name: 'Role')
  String role;
  UserLoginDataMoc(
    this.token,
    this.role,
  );
}
