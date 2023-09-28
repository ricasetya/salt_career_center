import 'package:telkom_career/base/result_entity.dart';
import 'package:telkom_career/domain/base/authentication_header_request.dart';
import 'package:telkom_career/domain/model/request/profile/profile_add_education/profile_add_education_request.dart';

abstract class ProfileAddEducationRepository {
  Future<ResultEntity> submitProfileAddEducation(
      AuthenticationHeaderRequest header, ProfileAddEducationRequest request);
}
