// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'jobs_company_data_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JobsCompanyDataResponse _$JobsCompanyDataResponseFromJson(
        Map<String, dynamic> json) =>
    JobsCompanyDataResponse(
      id: json['id'] as String?,
      companyId: json['companyId'] as String?,
      position: json['position'] as String?,
      company: json['company'] as String?,
      logo: json['logo'] as String?,
      urlLogo: json['urlLogo'] as String?,
      address: json['address'] as String?,
      status: json['status'] as bool?,
      applyDate: json['applyDate'] as String?,
      qualification: json['qualification'] as String?,
      jobDescription: json['jobDescription'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      applicant: json['applicant'] as int?,
    );

Map<String, dynamic> _$JobsCompanyDataResponseToJson(
        JobsCompanyDataResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'companyId': instance.companyId,
      'position': instance.position,
      'company': instance.company,
      'logo': instance.logo,
      'urlLogo': instance.urlLogo,
      'address': instance.address,
      'status': instance.status,
      'applyDate': instance.applyDate,
      'qualification': instance.qualification,
      'jobDescription': instance.jobDescription,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'applicant': instance.applicant,
    };
