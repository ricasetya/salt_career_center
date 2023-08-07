// ignore_for_file: avoid_print, unnecessary_brace_in_string_interps

import 'package:http/http.dart';
import 'package:telkom_career/base/base_config.dart';
import 'package:telkom_career/domain/base/authentication_header_request.dart';

class ListsCompanyDataRemoteService {
  Client client = Client();
  Future<Response> fetchListsCompany(AuthenticationHeaderRequest header) async {
    final url = Uri.http(BaseConfig.BASE_DOMAIN_MOC,
        BaseConfig.BASE_PATH_MOC + BaseConfig.LISTS_COMPANY);
    print("url: ${url}");
    print("request listcompany ${header.toHeader()}");

    return client.get(
      url,
      headers: header.toHeader(),
    );
  }
}
