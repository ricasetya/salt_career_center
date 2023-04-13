// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lists_company_data_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListsCompanyDataResponse _$ListsCompanyDataResponseFromJson(
        Map<String, dynamic> json) =>
    ListsCompanyDataResponse(
      name: json['name'] as String?,
      typeCompany: json['typeCompany'] as String?,
      address: json['address'] as String?,
      logo: json['logo'] as String?,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$ListsCompanyDataResponseToJson(
        ListsCompanyDataResponse instance) =>
    <String, dynamic>{
      'name': instance.name,
      'typeCompany': instance.typeCompany,
      'address': instance.address,
      'logo': instance.logo,
      'id': instance.id,
    };
