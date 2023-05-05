// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:telkom_career/domain/model/data/company/about_company_data.dart';
import 'package:telkom_career/domain/model/data/company/jobs_company_data.dart';

class CompanyData {
  String? name;
  String? typeCompany;
  String? address;
  String? logo;
  AboutCompanyData? about;
  String? posting;
  List<JobsCompanyData>? jobs;
  String? id;
  CompanyData({
    this.name,
    this.typeCompany,
    this.address,
    this.logo,
    this.about,
    this.posting,
    this.jobs,
    this.id,
  });
}
