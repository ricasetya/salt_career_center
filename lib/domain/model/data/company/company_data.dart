// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:telkom_career/domain/model/data/company/about_company_data.dart';
import 'package:telkom_career/domain/model/data/company/jobs_company_data.dart';

class CompanyData {
  String? id;
  String? name;
  String? typeCompany;
  String? address;
  String? logo;
  String? urlLogo;
  AboutCompanyData? about;
  List<JobsCompanyData>? jobs;
  String? createdAt;
  String? updatedAt;
  String? deletedAt;

  CompanyData({
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
}
