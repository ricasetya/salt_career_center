import 'dart:convert';
//import 'dart:math';

import 'package:telkom_career/base/login_moc/base_remote_response.dart';
import 'package:telkom_career/base/result_entity.dart';
//import 'package:telkom_career/data/model/lists_company/lists_company_data_remote_response.dart';
import 'package:telkom_career/data/model/lists_company/lists_company_data_response.dart';
import 'package:telkom_career/data/service/remote/lists_company/lists_company_data_remote_service.dart';
import 'package:telkom_career/domain/base/authentication_header_request.dart';
import 'package:telkom_career/domain/model/data/lists_company/lists_company_data.dart';
import 'package:telkom_career/domain/repository/lists_company/lists_company_data_repository.dart';

class ListsCompanyDataRepositoryImpl implements ListsCompanyDataRepository {
  final listsCompanyDataRemoteService = ListsCompanyDataRemoteService();

  @override
  Future<ResultEntity<List<ListsCompanyData>>> fetchListsCompany(
      AuthenticationHeaderRequest header) async {
    try {
      final response =
          await listsCompanyDataRemoteService.fetchListsCompany(header);
      if (response.statusCode == 200 || response.statusCode == 201) {
        BaseRemoteResponseMoc<List<ListsCompanyDataResponse>>
            baseResponseListCompanyArray =
            BaseRemoteResponseMoc<List<ListsCompanyDataResponse>>.fromJson(
                jsonDecode(response.body),
                (json) => (json as List)
                    .map((e) => ListsCompanyDataResponse.fromJson(
                        e as Map<String, dynamic>))
                    .toList());

        //    ListsCompanyDataRemoteResponse.fromJson(jsonDecode(response.body));

        if (baseResponseListCompanyArray.status == null) {
          return ResultError(
              message: baseResponseListCompanyArray.status!.message);
        } else if (baseResponseListCompanyArray.status?.code != 0) {
          return ResultError(
              message: baseResponseListCompanyArray.status!.message);
        } else {
          return ResultSuccess<List<ListsCompanyData>>(
              baseResponseListCompanyArray.data
                      ?.map((e) => e.toListsCompanyData())
                      .toList() ??
                  List.empty());
        }
      } else {
        return ResultError(message: "ERROR NOT NULL");
      }
    } catch (error) {
      return ResultError(message: error.toString());
    }
  }
}
