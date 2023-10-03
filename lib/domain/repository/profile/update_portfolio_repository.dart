import 'package:telkom_career/base/result_entity.dart';
import 'package:telkom_career/domain/model/request/profile/portfolio/portfolio_request.dart';

import '../../base/authentication_header_request.dart';

abstract class UpdatePortfolioRepository {
  Future<ResultEntity> updatePortfolio(
      AuthenticationHeadersRequestUpload header, PortfolioRequest request);
}
