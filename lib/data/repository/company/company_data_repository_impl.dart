// ignore_for_file: avoid_print, unnecessary_brace_in_string_interps

import 'dart:convert';

import 'package:telkom_career/base/login_moc/base_remote_response.dart';
import 'package:telkom_career/base/result_entity.dart';
import 'package:telkom_career/data/model/company/company_data_response.dart';
import 'package:telkom_career/data/service/remote/company/company_data_remote_service.dart';
import 'package:telkom_career/domain/base/authentication_header_request.dart';
import 'package:telkom_career/domain/model/data/company/company_data.dart';
import 'package:telkom_career/domain/repository/company/company_data_repository.dart';

class CompanyDataRepositoryImpl implements CompanyDataRepository {
  final companyDataRemoteService = CompanyDataRemoteService();

  @override
  Future<ResultEntity<CompanyData>> fetchCompanyData(
      AuthenticationHeaderRequest header, String id) async {
    try {
      final response =
          await companyDataRemoteService.fetchCompanyData(header, id);
      print("status code ${response.statusCode}");
      print("status body ${response.body}");
      print("Status id ${id}");
      if (response.statusCode == 200 || response.statusCode == 201) {
        BaseRemoteResponseMoc<CompanyDataResponse> baseCompanyData =
            BaseRemoteResponseMoc<CompanyDataResponse>.fromJson(
          jsonDecode(response.body),
          (json) => CompanyDataResponse.fromJson(
            json as Map<String, dynamic>,
          ),
        );

        if (baseCompanyData.status == null) {
          return ResultError(message: baseCompanyData.status!.message);
        } else if (baseCompanyData.status?.code != 0) {
          return ResultError(message: baseCompanyData.status!.message);
        } else {
          return ResultSuccess(baseCompanyData.data!.toCompanyData());
        }
      } else {
        return ResultError(message: "ERROR NOT NULL");
      }
    } catch (error) {
      return ResultError(message: error.toString());
    }
  }
}
