// import 'dart:convert';

// import 'package:http/http.dart';
// import 'package:telkom_career/base/result_entity.dart';
// import 'package:telkom_career/data/model/login/login_collection_remote_response.dart';
// import 'package:telkom_career/data/service/remote/login/login_remote_service.dart';
// import 'package:telkom_career/domain/model/login/login_data.dart';
// import 'package:telkom_career/domain/repository/login/login_repository.dart';

// class LoginRepositoryImpl implements LoginRepository {
//   final loginRemoteService = LoginRemoteService();

//   @override
//   Future<ResultEntity<List<LoginData>>> fetchLogins(String country) async {
//     try {
//       print("FETCH 2 : REPO");
//       final response = await loginRemoteService.fetchLogins(country);

//       print("RESPONSE : ${response.statusCode}");

//       if (response.statusCode == 200) {
//         var a =
//             LoginCollectionRemoteResponse.fromJson(jsonDecode(response.body))
//                     .logins
//                     ?.map((e) => e.toLoginData())
//                     .toList() ??
//                 List.empty();

//         print("LOGIN : ${a.length}");
//         return ResultSuccess<List<LoginData>>(a);
//       } else {
//         return ResultError<List<LoginData>>();
//       }
//     } catch (e) {
//       print("ERROR : $e");
//       return ResultError(message: "error fetch login");
//     }
//   }
// }
