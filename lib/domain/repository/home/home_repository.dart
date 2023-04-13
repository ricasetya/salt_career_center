import 'package:telkom_career/base/result_entity.dart';
import 'package:telkom_career/domain/base/authentication_header_request.dart';
import 'package:telkom_career/domain/model/data/home/home_data.dart';

abstract class HomeRepository {
  Future<ResultEntity<HomeData>> fetchHome(AuthenticationHeaderRequest header);
}
