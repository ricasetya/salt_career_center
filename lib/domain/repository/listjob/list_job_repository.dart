import 'package:telkom_career/base/result_entity.dart';
import 'package:telkom_career/domain/base/authentication_header_request.dart';
import 'package:telkom_career/domain/model/data/list_job/list_job_data.dart';

abstract class ListJobRepository {
  Future<ResultEntity<List<ListJobData>>> fetchListJob(
      AuthenticationHeaderRequest header);
}
