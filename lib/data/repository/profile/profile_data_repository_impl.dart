// ignore_for_file: avoid_print

import 'dart:convert';

import 'package:telkom_career/base/login_moc/base_remote_response.dart';
import 'package:telkom_career/base/result_entity.dart';
import 'package:telkom_career/data/model/profile/profile_data_remote_response.dart';
import 'package:telkom_career/data/service/remote/profile/profile_data_remote_service.dart';
import 'package:telkom_career/domain/model/data/profile/profile_data.dart';
import 'package:telkom_career/domain/base/authentication_header_request.dart';
import 'package:telkom_career/domain/repository/profile/profile_data_repository.dart';

class ProfileDataRepositoryImpl implements ProfileDataRepository {
  final profileDataRemoteService = ProfileDataRemoteService();

  @override
  Future<ResultEntity<ProfileData>> fetchProfileData(
      AuthenticationHeaderRequest header) async {
    try {
      final response = await profileDataRemoteService.fetchProfileData(header);
      print("STATUS PROFILE DATA : ${response.statusCode}");
      if (response.statusCode == 200 || response.statusCode == 201) {
        // final Map<String, dynamic> responseBody =
        //     jsonDecode(response.body) as Map<String, dynamic>;

        BaseRemoteResponseMoc<ProfileDataRemoteResponse> baseProfileData =
            BaseRemoteResponseMoc<ProfileDataRemoteResponse>.fromJson(
          jsonDecode(response.body),
          (json) => ProfileDataRemoteResponse.fromJson(
            json as Map<String, dynamic>,
          ),
        );

        if (baseProfileData.status == null) {
          return ResultError(message: baseProfileData.status?.message);
        } else if (baseProfileData.status?.code != 0) {
          return ResultError(message: baseProfileData.status!.message);
        } else {
          return ResultSuccess(baseProfileData.data!.toProfileData());
        }
      } else {
        return ResultError(message: response.toString());
        //print("Eroor ${response.body}");
      }
    } catch (error) {
      return ResultError(message: error.toString());
    }
  }
}
