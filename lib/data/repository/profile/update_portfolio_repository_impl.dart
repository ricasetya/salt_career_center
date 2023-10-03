import 'dart:convert';

import 'package:telkom_career/base/login_moc/base_remote_response.dart';
import 'package:telkom_career/base/result_entity.dart';
import 'package:telkom_career/data/service/remote/profile/update_portfolio_remote_service.dart';
import 'package:telkom_career/domain/base/authentication_header_request.dart';
import 'package:telkom_career/domain/model/request/profile/portfolio/portfolio_request.dart';
import 'package:telkom_career/domain/repository/profile/update_portfolio_repository.dart';

class UpdatePortfolioRepositoryImpl implements UpdatePortfolioRepository {
  final portfolioRemoteService = UpdatePortfolioRemoteService();

  @override
  Future<ResultEntity> updatePortfolio(
      AuthenticationHeadersRequestUpload header,
      PortfolioRequest request) async {
    try {
      final response =
          await portfolioRemoteService.updatePortfolio(header, request);
      if (response.statusCode == 200) {
        BaseRemoteResponseMoc baseResponsePortfolio =
            BaseRemoteResponseMoc.fromJson(
                jsonDecode(response.body), (json) => null);
        if (baseResponsePortfolio.status == null) {
          return ResultError();
        } else if (baseResponsePortfolio.status?.code != 0) {
          return ResultError(message: baseResponsePortfolio.status?.message);
        } else {
          return ResultSuccess(baseResponsePortfolio.data);
        }
      } else {
        return ResultError(message: response.body);
      }
    } catch (e) {
      return ResultError(message: e.toString());
    }
  }
}
