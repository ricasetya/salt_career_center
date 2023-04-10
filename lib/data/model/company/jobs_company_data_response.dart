// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';
import 'package:telkom_career/domain/model/data/company/jobs_company_data.dart';

part 'jobs_company_data_response.g.dart';

@JsonSerializable()
class JobsCompanyDataResponse implements JobsCompanyDataResponseMapper {
  String? skill;
  String? nameCompany;
  String? addres;
  String? createdAt;
  JobsCompanyDataResponse({
    this.skill,
    this.nameCompany,
    this.addres,
    this.createdAt,
  });

  factory JobsCompanyDataResponse.fromJson(Map<String, dynamic> json) =>
      _$JobsCompanyDataResponseFromJson(json);

  Map<String, dynamic> toJson() => _$JobsCompanyDataResponseToJson(this);

  @override
  JobsCompanyData toJobsCompanyData() {
    return JobsCompanyData(
      skill: skill,
      nameCompany: nameCompany,
      addres: addres,
      createdAt: createdAt,
    );
  }
}

abstract class JobsCompanyDataResponseMapper {
  JobsCompanyData toJobsCompanyData();
}
