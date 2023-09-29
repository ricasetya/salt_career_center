import 'dart:io';

import 'package:telkom_career/base/result_entity.dart';
import 'package:telkom_career/domain/base/authentication_header_request.dart';
import 'package:telkom_career/domain/model/request/profile/profile_cvresume/profile_cv_resume_request.dart';

abstract class ProfileCvResumeRepository {
  Future<ResultEntity> fetchAddCvResume(
    AuthenticationHeadersRequestUpload header,
    ProfileCvResumeRequest request,

    //String id,
  );
}
