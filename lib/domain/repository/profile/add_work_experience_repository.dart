import 'package:telkom_career/base/result_entity.dart';
import 'package:telkom_career/domain/base/authentication_header_request.dart';
import 'package:telkom_career/domain/model/request/profile/profile_work_experience/add_work_experience_request.dart';

abstract class AddWorkExperienceRepository {
  Future<ResultEntity> addWorkExperience(
      AuthenticationHeaderRequest header, AddWorkExperienceRequest request);
}
