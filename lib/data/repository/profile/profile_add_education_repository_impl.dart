// ignore_for_file: avoid_print

import 'dart:convert';

import 'package:telkom_career/base/login_moc/base_remote_response.dart';
import 'package:telkom_career/base/result_entity.dart';
import 'package:telkom_career/data/service/remote/profile/profile_add_education_remote_service.dart';
import 'package:telkom_career/domain/model/request/profile/profile_add_education/profile_add_education_request.dart';
import 'package:telkom_career/domain/base/authentication_header_request.dart';
import 'package:telkom_career/domain/repository/profile/profile_add_education_repository.dart';

class ProfileAddEducationRepositoryImpl
    implements ProfileAddEducationRepository {
  final profileAddEducationRepositoryImpl = ProfileAddEducationRemoteService();

  @override
  Future<ResultEntity> submitProfileAddEducation(
      AuthenticationHeaderRequest header,
      ProfileAddEducationRequest request) async {
    try {
      final response = await profileAddEducationRepositoryImpl
          .submitProfileAddEducationRemoteService(header, request);
      print("Ini respon body : ${response.body}");
      print("STATUS Add EDUCATION : ${response.statusCode}");

      if (response.statusCode == 200) {
        BaseRemoteResponseMoc baseResponseAddEducation =
            BaseRemoteResponseMoc.fromJson(
                jsonDecode(response.body), (json) => null);
        if (baseResponseAddEducation.status == null) {
          return ResultError();
        } else if (baseResponseAddEducation.status?.code != 0) {
          return ResultError(message: baseResponseAddEducation.status?.message);
        } else {
          return ResultSuccess(baseResponseAddEducation.data);
        }
      } else {
        print("INI ERROR ADD EDUCATION : ${response.body}");
        return ResultError(message: response.body);
      }
    } catch (e) {
      print("INI ERROR ADD EDUCATION e : ${e.toString()}");
      return ResultError(message: e.toString());
    }
  }
}
