import 'package:telkom_career/base/result_entity.dart';
import 'package:telkom_career/domain/model/data/change_password/change_password_data.dart';
import 'package:telkom_career/domain/model/request/change_password/change_password_request.dart';

abstract class ChangePasswordRepository {
  Future<ResultEntity<ChangePasswordData>> fetchChangePassword(
      ChangePasswordRequest request);
}
