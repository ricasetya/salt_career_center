import 'package:http/http.dart';
import 'package:telkom_career/base/base_config.dart';
import 'package:telkom_career/domain/base/authentication_header_request.dart';

class ListsCompanyDataRemoteService {
  Client client = Client();
  Future<Response> fetchListsCompany(AuthenticationHeaderRequest header) async {
    final url = Uri.http(BaseConfig.BASE_DOMAIN_MOC,
        BaseConfig.BASE_PATH_MOC + BaseConfig.LISTS_COMPANY);
    // ignore: avoid_print
    print("url: ${url}");
    print("request listcompany ${header.toHeader()}");

    return client.get(
      url,
      headers: header.toHeader(),
    );
  }
}
