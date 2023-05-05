// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_data_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CompanyDataResponse _$CompanyDataResponseFromJson(Map<String, dynamic> json) =>
    CompanyDataResponse(
      name: json['name'] as String?,
      typeCompany: json['typeCompany'] as String?,
      address: json['address'] as String?,
      logo: json['logo'] as String?,
      about: json['about'] == null
          ? null
          : AboutCompanyDataResponse.fromJson(
              json['about'] as Map<String, dynamic>),
      posting: json['posting'] as String?,
      jobs: (json['jobs'] as List<dynamic>?)
          ?.map((e) =>
              JobsCompanyDataResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
    );

Map<String, dynamic> _$CompanyDataResponseToJson(
        CompanyDataResponse instance) =>
    <String, dynamic>{
      'name': instance.name,
      'typeCompany': instance.typeCompany,
      'address': instance.address,
      'logo': instance.logo,
      'about': instance.about,
      'posting': instance.posting,
      'jobs': instance.jobs,
      'id': instance.id,
    };
