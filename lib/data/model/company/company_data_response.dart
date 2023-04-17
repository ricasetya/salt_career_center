// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';
import 'package:telkom_career/data/model/company/about_company_data_response.dart';
import 'package:telkom_career/data/model/company/jobs_company_data_response.dart';
import 'package:telkom_career/domain/model/data/company/about_company_data.dart';
import 'package:telkom_career/domain/model/data/company/company_data.dart';

part 'company_data_response.g.dart';

@JsonSerializable()
class CompanyDataResponse implements CompanyDataResponseMapper {
  String? name;
  String? typeCompany;
  String? addres;
  String? logo;
  AboutCompanyDataResponse? about;
  String? posting;
  List<JobsCompanyDataResponse>? jobs;
  String? id;
  CompanyDataResponse({
    this.name,
    this.typeCompany,
    this.addres,
    this.logo,
    this.about,
    this.posting,
    this.jobs,
    this.id,
  });

  factory CompanyDataResponse.fromJson(Map<String, dynamic> json) =>
      _$CompanyDataResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CompanyDataResponseToJson(this);

  @override
  CompanyData toCompanyData() {
    return CompanyData(
      name: name,
      typeCompany: typeCompany,
      addres: addres,
      logo: logo,
      about: about?.toAboutCompanyData() ??
          AboutCompanyData(location: "", profile: "", website: ""),
      posting: "",
      jobs: jobs?.map((e) => e.toJobsCompanyData()).toList(),
      id: id,
    );
  }

  toJobsCompanyData() {}
}

abstract class CompanyDataResponseMapper {
  CompanyData toCompanyData();
}
