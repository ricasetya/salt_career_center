// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';

import 'package:telkom_career/data/model/company/about_company_data_response.dart';
import 'package:telkom_career/data/model/company/jobs_company_data_response.dart';
import 'package:telkom_career/domain/model/data/company/about_company_data.dart';
import 'package:telkom_career/domain/model/data/company/company_data.dart';

part 'company_data_response.g.dart';

@JsonSerializable()
class CompanyDataResponse implements CompanyDataResponseMapper {
  String? id;
  String? name;
  String? typeCompany;
  String? address;
  String? logo;
  String? urlLogo;
  AboutCompanyDataResponse? about;
  List<JobsCompanyDataResponse>? jobs;
  String? createdAt;
  String? updatedAt;
  String? deletedAt;

  CompanyDataResponse({
    this.id,
    this.name,
    this.typeCompany,
    this.address,
    this.logo,
    this.urlLogo,
    this.about,
    this.jobs,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
  });

  factory CompanyDataResponse.fromJson(Map<String, dynamic> json) =>
      _$CompanyDataResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CompanyDataResponseToJson(this);

  @override
  CompanyData toCompanyData() {
    return CompanyData(
      id: id,
      name: name,
      typeCompany: typeCompany,
      address: address,
      logo: logo,
      urlLogo: urlLogo,
      about: about?.toAboutCompanyData() ??
          AboutCompanyData(
            profile: "",
            website: "",
            location: "",
          ),
      jobs: jobs?.map((e) => e.toJobsCompanyData()).toList(),
      createdAt: createdAt,
      updatedAt: updatedAt,
      deletedAt: deletedAt,
    );
  }

  toJobsCompanyData() {}
}

abstract class CompanyDataResponseMapper {
  CompanyData toCompanyData();
}
