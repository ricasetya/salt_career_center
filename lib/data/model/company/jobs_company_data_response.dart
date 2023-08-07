// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';
import 'package:telkom_career/domain/model/data/company/jobs_company_data.dart';

part 'jobs_company_data_response.g.dart';

@JsonSerializable()
class JobsCompanyDataResponse implements JobsCompanyDataResponseMapper {
  String? id;
  String? companyId;
  String? position;
  String? company;
  String? logo;
  String? urlLogo;
  String? address;
  bool? status;
  String? applyDate;
  String? qualification;
  String? jobDescription;
  String? createdAt;
  String? updatedAt;
  int? applicant;
  JobsCompanyDataResponse({
    this.id,
    this.companyId,
    this.position,
    this.company,
    this.logo,
    this.urlLogo,
    this.address,
    this.status,
    this.applyDate,
    this.qualification,
    this.jobDescription,
    this.createdAt,
    this.updatedAt,
    this.applicant,
  });

  factory JobsCompanyDataResponse.fromJson(Map<String, dynamic> json) =>
      _$JobsCompanyDataResponseFromJson(json);

  Map<String, dynamic> toJson() => _$JobsCompanyDataResponseToJson(this);

  @override
  JobsCompanyData toJobsCompanyData() {
    return JobsCompanyData(
      id ?? "",
      companyId ?? "",
      position ?? "",
      company ?? "",
      logo ?? "",
      urlLogo ?? "",
      address ?? "",
      status!,
      applyDate ?? "",
      qualification ?? "",
      jobDescription ?? "",
      createdAt ?? "",
      updatedAt ?? "",
      applicant!,
    );
  }
}

abstract class JobsCompanyDataResponseMapper {
  JobsCompanyData toJobsCompanyData();
}
