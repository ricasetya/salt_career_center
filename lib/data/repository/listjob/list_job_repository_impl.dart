// ignore_for_file: avoid_print

import 'dart:convert';

import 'package:telkom_career/base/login_moc/base_remote_response.dart';
import 'package:telkom_career/base/result_entity.dart';
import 'package:telkom_career/data/model/list_job/list_response.dart';
import 'package:telkom_career/data/service/remote/listjob/list_job_remote_service.dart';
import 'package:telkom_career/domain/base/authentication_header_request.dart';
import 'package:telkom_career/domain/model/data/list_job/list_job_data.dart';
import 'package:telkom_career/domain/repository/listjob/list_job_repository.dart';

class ListJobRepositoryImpl implements ListJobRepository {
  final listJobRemoteSevice = ListJobRemoteService();

  @override
  Future<ResultEntity<List<ListJobData>>> fetchListJob(
      AuthenticationHeaderRequest header) async {
    try {
      final response = await listJobRemoteSevice.fetchListJob(header);
      print("status listjobs: ${response.statusCode}");

      if (response.statusCode == 200 || response.statusCode == 201) {
        BaseRemoteResponseMoc<List<ListResponse>> baseRemotResponseArray =
            BaseRemoteResponseMoc<List<ListResponse>>.fromJson(
                jsonDecode(response.body),
                (json) => (json as List)
                    .map(
                        (e) => ListResponse.fromJson(e as Map<String, dynamic>))
                    .toList());
        // List<ListRemoteResponse>.fromJson(json as Map<String, dynamic>));

        if (baseRemotResponseArray.status == null) {
          print(baseRemotResponseArray.status);
          return ResultError(message: baseRemotResponseArray.status!.message);
        } else if (baseRemotResponseArray.status?.code != 0) {
          print(baseRemotResponseArray.status?.code);
          return ResultError(message: baseRemotResponseArray.status!.message);
        } else {
          print(baseRemotResponseArray.data);

          return ResultSuccess<List<ListJobData>>(baseRemotResponseArray.data
                  ?.map((e) => e.toListJobData())
                  .toList() ??
              List.empty());
        }
      } else {
        return ResultError(message: response.statusCode.toString());
      }
    } catch (e) {
      return ResultError(message: e.toString());
    }
  }
}
