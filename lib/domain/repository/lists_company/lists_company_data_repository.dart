import 'package:telkom_career/base/result_entity.dart';
import 'package:telkom_career/domain/base/authentication_header_request.dart';
import 'package:telkom_career/domain/model/data/lists_company/lists_company_data.dart';

abstract class ListsCompanyDataRepository {
  Future<ResultEntity<List<ListsCompanyData>>> fetchListsCompany(
      AuthenticationHeaderRequest header);
}
