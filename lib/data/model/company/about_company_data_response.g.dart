// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'about_company_data_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AboutCompanyDataResponse _$AboutCompanyDataResponseFromJson(
        Map<String, dynamic> json) =>
    AboutCompanyDataResponse(
      profile: json['profile'] as String?,
      website: json['website'] as String?,
      location: json['location'] as String?,
    );

Map<String, dynamic> _$AboutCompanyDataResponseToJson(
        AboutCompanyDataResponse instance) =>
    <String, dynamic>{
      'profile': instance.profile,
      'website': instance.website,
      'location': instance.location,
    };
