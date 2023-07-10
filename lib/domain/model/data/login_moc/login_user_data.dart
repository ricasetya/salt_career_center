// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';

class UserLoginDataMoc {
  //@JsonKey(name: 'Token')
  String Token;
  //@JsonKey(name: 'Role')
  String Role;
  UserLoginDataMoc(
    this.Token,
    this.Role,
  );
}
