// ignore_for_file: avoid_print

import 'dart:convert';

import 'package:telkom_career/base/login_moc/base_remote_response.dart';
import 'package:telkom_career/base/result_entity.dart';
import 'package:telkom_career/data/service/remote/profile/profile_update_cv_resume_remote_service.dart';
import 'package:telkom_career/domain/model/request/profile/profile_cvresume/profile_cv_resume_request.dart';
import 'package:telkom_career/domain/base/authentication_header_request.dart';
import 'package:telkom_career/domain/repository/profile/profile_cv_resume_repository.dart';

class ProfileUpdateCvResumeRepositoryImpl implements ProfileCvResumeRepository {
  final profileUpdateCvResume = ProfileUpdateCvResumeRemoteService();

  @override
  Future<ResultEntity> fetchAddCvResume(
      AuthenticationHeadersRequestUpload header,
      ProfileCvResumeRequest request) async {
    try {
      final response =
          await profileUpdateCvResume.updateUpdateCvResumeRemoteService(
        header,
        request,
      );

      print("STATUS UPLOAD CV RESUme: ${response.statusCode}");
      print("BODY UPLOAD CV: ${response.body}");
      print("RESPONSE HEADERS: ${response.headers}");

      if (response.statusCode == 200) {
        BaseRemoteResponseMoc profileUpdateCvResume =
            BaseRemoteResponseMoc.fromJson(
          jsonDecode(response.body),
          (json) => null,
        );

        if (profileUpdateCvResume.status == null) {
          return ResultError();
        } else if (profileUpdateCvResume.status?.code != 0) {
          return ResultError(message: profileUpdateCvResume.status?.message);
        } else {
          return ResultSuccess(profileUpdateCvResume.data);
        }
      } else {
        print('INI ERROR UPDATE CV : ${response.body}');
        return ResultError(message: response.body);
      }
    } catch (e) {
      print("INI ERROR UPDATE CV e : ${e.toString()}");
      return ResultError(message: e.toString());
    }
  }
}
