import 'package:telkom_career/base/result_entity.dart';
import 'package:telkom_career/domain/base/authentication_header_request.dart';
import 'package:telkom_career/domain/model/data/company/company_data.dart';

abstract class CompanyDataRepository {
  Future<ResultEntity<CompanyData>> fetchCompanyData(
      AuthenticationHeaderRequest header, String id);
}
