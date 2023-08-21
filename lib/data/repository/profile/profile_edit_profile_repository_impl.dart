// ignore_for_file: avoid_print

import 'dart:convert';

import 'package:telkom_career/base/login_moc/base_remote_response.dart';
import 'package:telkom_career/base/result_entity.dart';
import 'package:telkom_career/data/model/profile/profile_edit_profile_remote_response/profile_edit_profile_remote_response.dart';
import 'package:telkom_career/data/service/remote/profile/profile_edit_profile_remote_service.dart';
import 'package:telkom_career/domain/base/authentication_header_request.dart';
import 'package:telkom_career/domain/model/request/profile/profile_edit_profile/profile_edit_profile_request.dart';
import 'package:telkom_career/domain/model/data/profile/profile_edit_profile_data.dart';
import 'package:telkom_career/domain/repository/profile/profile_edit_profile_repository.dart';

class ProfileEditProfileRepositoryImpl implements ProfileEditProfileRepository {
  final profileEditProfileRepositoryImpl = ProfileEditProfileRemoteService();

  @override
  Future<ResultEntity<ProfileEditProfileData>>
      updateProfileEditProfileRepository(
    AuthenticationHeaderRequest header,
    ProfileEditProfileRequest request,
  ) async {
    try {
      final response = await profileEditProfileRepositoryImpl
          .updateProfileEditProfileRemoteService(header, request);

      print("STATUS PROFILE EDIT PROFILE : ${response.statusCode}");

      if (response.statusCode == 200) {
        BaseRemoteResponseMoc<ProfileEditProfileRemoteResponse>
            baseResponseEditProfile =
            BaseRemoteResponseMoc<ProfileEditProfileRemoteResponse>.fromJson(
          jsonDecode(response.body),
          (json) => ProfileEditProfileRemoteResponse.fromJson(
              json as Map<String, dynamic>),
        );

        ProfileEditProfileRemoteResponse.fromJson(
          jsonDecode(response.body),
        );

        if (baseResponseEditProfile.status == null) {
          return ResultError(message: baseResponseEditProfile.status?.message);
        } else if (baseResponseEditProfile.status?.code != 0) {
          return ResultError(message: baseResponseEditProfile.status?.message);
        } else {
          return ResultSuccess(
              baseResponseEditProfile.data!.toProfileEditProfileData());
        }
      } else {
        print("INI ERROR PROFILE EDIT PROFILE : ${response.body}");
        //return ResultError(message: response.body);
        return ResultError<ProfileEditProfileData>();
      }
    } catch (e) {
      print("INI EROR PROFILE EDIT PROFILE e : ${e.toString()}");
      return ResultError(message: e.toString());
    }
  }
}
