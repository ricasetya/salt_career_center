import 'dart:convert';

import 'package:telkom_career/base/login_moc/base_remote_response.dart';
import 'package:telkom_career/base/result_entity.dart';
import 'package:telkom_career/data/model/lists_jobs/lists_jobs_remote_response.dart';
import 'package:telkom_career/data/service/remote/lists_jobs/lists_jobs_remote_service.dart';
import 'package:telkom_career/domain/base/authentication_header_request.dart';
import 'package:telkom_career/domain/model/data/lists_jobs/lists_jobs_data.dart';
import 'package:telkom_career/domain/repository/lists_jobs/lists_jobs_repository.dart';

class ListsJobsRepositoryImpl implements ListsJobsRepository {
  final listsJobsRemoteService = ListsJobsRemoteService();

  @override
  Future<ResultEntity<List<ListsJobsData>>> fetchJobs(
      AuthenticationHeaderRequest header) async {
    try {
      final response = await listsJobsRemoteService.fetchJobs(header);
      if (response.statusCode == 200 || response.statusCode == 201) {
        // "data":[{}.{},{}]
        // "data" -> BaseRemoteREsponseMoc
        // "data" -> List / Array []
        // Array -> ListsJobsRemoteResponse

        // "data": {"listsJob": [{},{},{}]}

        BaseRemoteResponseMoc<List<ListsJobsRemoteResponse>> baseResponseArray =
            BaseRemoteResponseMoc<List<ListsJobsRemoteResponse>>.fromJson(
                jsonDecode(response.body),
                (json) => (json as List)
                    .map((e) => ListsJobsRemoteResponse.fromJson(
                        e as Map<String, dynamic>))
                    .toList());

        if (baseResponseArray.status == null) {
          return ResultError(message: baseResponseArray.status!.message);
        } else if (baseResponseArray.status?.code != 0) {
          return ResultError(message: baseResponseArray.status!.message);
        } else {
          return ResultSuccess<List<ListsJobsData>>(baseResponseArray.data
                  ?.map((e) => e.toListsJobsData())
                  .toList() ??
              List.empty());
        }
      } else {
        return ResultError(message: "ERROR NOT NULL");
      }
    } catch (error) {
      return ResultError(message: error.toString());
    }
  }
}
