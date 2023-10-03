import 'package:http/http.dart';
import 'package:http_parser/http_parser.dart';
import 'package:telkom_career/base/base_config.dart';
import 'package:telkom_career/domain/base/authentication_header_request.dart';
import 'package:telkom_career/domain/model/request/profile/portfolio/portfolio_request.dart';

class UpdatePortfolioRemoteService {
  Client client = Client();
  Future<Response> updatePortfolio(AuthenticationHeadersRequestUpload header,
      PortfolioRequest request) async {
    final url = Uri.http(BaseConfig.BASE_DOMAIN_MOC,
        BaseConfig.BASE_PATH_MOC + BaseConfig.UPDATE_PORTOFOLIO);
    var multipartRequest = MultipartRequest('POST', url);

    multipartRequest.files.add(await MultipartFile.fromPath(
        "file", request.portfolioFile!.path,
        filename: request.portfolioFile!.path.split("/").last,
        contentType: MediaType("file", 'pdf')));
    multipartRequest.headers.addAll(header.toHeader());

    var streamedResponse = await multipartRequest.send();
    var response = await Response.fromStream(streamedResponse);

    return response;
  }
}
