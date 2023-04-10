import 'package:http/http.dart';
import 'package:telkom_career/base/base_config.dart';
import 'package:telkom_career/domain/base/authentication_header_request.dart';

class CompanyDataRemoteService {
  Client client = Client();
  Future<Response> fetchCompanyData(AuthenticationHeaderRequest header) async {
    final url = Uri.https(BaseConfig.BASE_DOMAIN_MOC,
        BaseConfig.BASE_PATH_MOC + BaseConfig.BASE_COMPANY);

    print(url);

    return client.get(url);
  }
}
