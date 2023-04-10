// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'jobs_company_data_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JobsCompanyDataResponse _$JobsCompanyDataResponseFromJson(
        Map<String, dynamic> json) =>
    JobsCompanyDataResponse(
      skill: json['skill'] as String?,
      nameCompany: json['nameCompany'] as String?,
      addres: json['addres'] as String?,
      createdAt: json['createdAt'] as String?,
    );

Map<String, dynamic> _$JobsCompanyDataResponseToJson(
        JobsCompanyDataResponse instance) =>
    <String, dynamic>{
      'skill': instance.skill,
      'nameCompany': instance.nameCompany,
      'addres': instance.addres,
      'createdAt': instance.createdAt,
    };
