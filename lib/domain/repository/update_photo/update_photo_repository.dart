import 'package:telkom_career/base/result_entity.dart';

abstract class UpdatePhotoRepository {
  Future<ResultEntity> updatePhoto(String id, String profileId);
}
