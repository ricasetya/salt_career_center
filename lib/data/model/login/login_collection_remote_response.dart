// // ignore_for_file: public_member_api_docs, sort_constructors_first
// import 'package:json_annotation/json_annotation.dart';

// import 'package:telkom_career/data/model/login/login_remote_response.dart';
// import 'package:telkom_career/data/model/login/status_remote_response.dart';
// import 'package:telkom_career/domain/model/login/login_data.dart';

// part 'login_collection_remote_response.g.dart';

// @JsonSerializable()
// class LoginCollectionRemoteResponse
//     implements LoginCollectionRemoteResponseMapper {
//   List<LoginRemoteResponse>? logins;
//   StatusRemoteResponse? statuses;
//   LoginCollectionRemoteResponse({
//     this.logins,
//     this.statuses,
//   });

//   factory LoginCollectionRemoteResponse.fromJson(Map<String, dynamic> json) =>
//       _$LoginCollectionRemoteResponseFromJson(json);

//   Map<String, dynamic> toJson() => _$LoginCollectionRemoteResponseToJson(this);

//   @override
//   LoginData toLoginData() {
//     return logins?.toLoginData();
//   }
// }

// abstract class LoginCollectionRemoteResponseMapper {
//   LoginData toLoginData();
// }
