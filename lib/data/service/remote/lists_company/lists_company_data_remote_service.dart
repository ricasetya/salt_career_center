import 'package:http/http.dart';
import 'package:telkom_career/base/base_config.dart';
import 'package:telkom_career/domain/base/authentication_header_request.dart';

class ListsCompanyDataRemoteService {
  Client client = Client();
  Future<Response> fetchListsCompany(AuthenticationHeaderRequest header) async {
    final url = Uri.https(
      BaseConfig.BASE_DOMAIN_MOC,
      BaseConfig.BASE_PATH_MOC + BaseConfig.LISTS_COMPANY,
    );
    print(url);

    return client.get(url, headers: header.toHeader());
  }
}
