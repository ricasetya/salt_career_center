import 'dart:convert';

import 'package:telkom_career/base/login_moc/base_remote_response.dart';
import 'package:telkom_career/base/result_entity.dart';
import 'package:telkom_career/data/model/company/company_data_response.dart';
import 'package:telkom_career/data/service/remote/company/company_data_remote_service.dart';
import 'package:telkom_career/domain/base/authentication_header_request.dart';
import 'package:telkom_career/domain/model/data/company/about_company_data.dart';
import 'package:telkom_career/domain/model/data/company/company_data.dart';
import 'package:telkom_career/domain/model/data/company/jobs_company_data.dart';
import 'package:telkom_career/domain/repository/company/company_data_repository.dart';

class CompanyDataRepositoryImpl implements CompanyDataRepository {
  final companyDataRemoteService = CompanyDataRemoteService();

  @override
  Future<ResultEntity<List<CompanyData>>> fetchCompanyData(
      AuthenticationHeaderRequest header) async {
    try {
      final response = await companyDataRemoteService.fetchCompanyData(header);
      if (response.statusCode == 200 || response.statusCode == 201) {
        BaseRemoteResponseMoc<List<CompanyDataResponse>> baseCompanyData =
            BaseRemoteResponseMoc<List<CompanyDataResponse>>.fromJson(
                jsonDecode(response.body),
                (json) => (json as List)
                    .map((e) =>
                        CompanyDataResponse.fromJson(e as Map<String, dynamic>))
                    .toList());

        if (baseCompanyData.status == null) {
          return ResultError(message: baseCompanyData.status!.message);
        } else if (baseCompanyData.status?.code != 0) {
          return ResultError(message: baseCompanyData.status!.message);
        } else {
          return ResultSuccess<List<CompanyData>>(
              baseCompanyData.data?.map((e) => e.toCompanyData()).toList() ??
                  List.empty());
        }
      } else {
        return ResultError(message: "ERROR NOT NULL");
      }
    } catch (error) {
      return ResultError(message: error.toString());
    }
  }

  @override
  Future<ResultEntity<AboutCompanyData>> fetchAboutCompanyData(
      AuthenticationHeaderRequest header) {
    // TODO: implement fetchAboutCompanyData
    throw UnimplementedError();
  }

  @override
  Future<ResultEntity<List<JobsCompanyData>>> fetchJobsCompanyData(
      AuthenticationHeaderRequest header) {
    // TODO: implement fetchJobsCompanyData
    throw UnimplementedError();
  }
}
