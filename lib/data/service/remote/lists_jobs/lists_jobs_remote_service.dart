import 'package:http/http.dart';
import 'package:telkom_career/base/base_config.dart';
import 'package:telkom_career/domain/base/authentication_header_request.dart';

class ListsJobsRemoteService {
  Client client = Client();
  Future<Response> fetchJobs(AuthenticationHeaderRequest header) async {
    final url = Uri.https(
      BaseConfig.BASE_DOMAIN_MOC,
      BaseConfig.BASE_PATH_MOC + BaseConfig.LISTS_JOBS,
    );

    print(url);

    return client.get(url);
  }
}
