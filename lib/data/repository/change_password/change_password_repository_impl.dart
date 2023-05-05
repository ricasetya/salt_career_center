// import 'dart:convert';

// import 'package:telkom_career/base/login_moc/base_remote_response.dart';
// import 'package:telkom_career/base/result_entity.dart';
// import 'package:telkom_career/data/model/change_password/change_password_remote_response.dart';
// import 'package:telkom_career/data/service/remote/change_password/change_password_remote_service.dart';
// import 'package:telkom_career/domain/base/authentication_header_request.dart';
// import 'package:telkom_career/domain/model/data/change_password/change_password_data.dart';
// import 'package:telkom_career/domain/model/request/change_password/change_password_request.dart';
// import 'package:telkom_career/domain/repository/change_password/change_password_repository.dart';

// class ChangePasswordRepositoryImpl implements ChangePasswordRepository {
//   final changepasswordRemoteService = ChangePasswordRemoteService();

//   @override
//   Future<ResultEntity<ChangePasswordData>> fetchChangePassword(
//       AuthenticationHeaderRequest request, id) async {
//     try {
//       final response =
//           await changepasswordRemoteService.fetchChangePassword(request, id);
//       if (response.statusCode == 200 || response.statusCode == 201) {
//         BaseRemoteResponseMoc<ChangePasswordRemoteResponse> baseChangePassword =
//             BaseRemoteResponseMoc<ChangePasswordRemoteResponse>.fromJson(
//                 jsonDecode(response.body),
//                 (json) => ChangePasswordRemoteResponse.fromJson(
//                     json as Map<String, dynamic>));

//         if (baseChangePassword.status == null) {
//           return ResultError(message: baseChangePassword.status!.message);
//         } else if (baseChangePassword.status?.code != 0) {
//           return ResultError(message: baseChangePassword.status!.message);
//         } else {
//           return ResultSuccess(baseChangePassword.data!.toChangePasswordData());
//         }
//       } else {
//         return ResultError(message: "ERROR NOT NULL");
//       }
//     } catch (error) {
//       return ResultError(message: error.toString());
//     }
//   }
// }
