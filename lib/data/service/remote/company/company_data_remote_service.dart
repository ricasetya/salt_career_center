import 'package:http/http.dart';
import 'package:telkom_career/base/base_config.dart';
import 'package:telkom_career/domain/base/authentication_header_request.dart';

class CompanyDataRemoteService {
  Client client = Client();
  Future<Response> fetchCompanyData(
      AuthenticationHeaderRequest header, String id) async {
    final url = Uri.https(BaseConfig.BASE_DOMAIN_MOC,
        BaseConfig.BASE_PATH_MOC + BaseConfig.BASE_COMPANY + "$id");
    //

    print(url);

    return client.get(url, headers: header.toHeader());
  }

  // Future<Response> fetchAboutCompanyData(
  //     AuthenticationHeaderRequest header, String id) async {
  //   final url = Uri.https(BaseConfig.BASE_DOMAIN_MOC,
  //       BaseConfig.BASE_PATH_MOC + BaseConfig.BASE_COMPANY + "$id");

  //   print(url);
  //   return client.get(url, headers: header.toHeader());
  // }

  // Future<Response> fetchJobsCompanyData(
  //     AuthenticationHeaderRequest header, String id) async {
  //   final url = Uri.https(BaseConfig.BASE_DOMAIN_MOC,
  //       BaseConfig.BASE_PATH_MOC + BaseConfig.BASE_COMPANY + "$id");

  //   print(url);
  //   return client.get(url, headers: header.toHeader());
  // }
}
