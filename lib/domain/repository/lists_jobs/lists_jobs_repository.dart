import 'package:telkom_career/base/result_entity.dart';
import 'package:telkom_career/domain/base/authentication_header_request.dart';
import 'package:telkom_career/domain/model/data/lists_jobs/lists_jobs_data.dart';

abstract class ListsJobsRepository {
  Future<ResultEntity<List<ListsJobsData>>> fetchJobs(
      AuthenticationHeaderRequest header);
}
