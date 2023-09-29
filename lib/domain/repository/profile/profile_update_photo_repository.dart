import 'dart:io';

import 'package:telkom_career/base/result_entity.dart';
import 'package:telkom_career/domain/base/authentication_header_request.dart';

abstract class ProfileUpdatePhotoRepository {
  Future<ResultEntity> fetchProfileUpdatePhoto(
    AuthenticationHeadersRequestUpload header,
    File? photo,
    //String id,
  );
}
