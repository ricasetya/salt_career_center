import 'package:telkom_career/base/result_entity.dart';
import 'package:telkom_career/domain/model/data/registers/registers_user_data.dart';

abstract class RegistersRepository {
  Future<ResultEntity<UserRegistersData>> registers(
      String email, String name, String password);
}
