// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_data_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CompanyDataResponse _$CompanyDataResponseFromJson(Map<String, dynamic> json) =>
    CompanyDataResponse(
      id: json['id'] as String?,
      name: json['name'] as String?,
      typeCompany: json['typeCompany'] as String?,
      address: json['address'] as String?,
      logo: json['logo'] as String?,
      urlLogo: json['urlLogo'] as String?,
      about: json['about'] == null
          ? null
          : AboutCompanyDataResponse.fromJson(
              json['about'] as Map<String, dynamic>),
      jobs: (json['jobs'] as List<dynamic>?)
          ?.map((e) =>
              JobsCompanyDataResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      deletedAt: json['deletedAt'] as String?,
    );

Map<String, dynamic> _$CompanyDataResponseToJson(
        CompanyDataResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'typeCompany': instance.typeCompany,
      'address': instance.address,
      'logo': instance.logo,
      'urlLogo': instance.urlLogo,
      'about': instance.about,
      'jobs': instance.jobs,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'deletedAt': instance.deletedAt,
    };
