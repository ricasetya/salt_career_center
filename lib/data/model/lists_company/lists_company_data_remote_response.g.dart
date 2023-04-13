// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lists_company_data_remote_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListsCompanyDataRemoteResponse _$ListsCompanyDataRemoteResponseFromJson(
        Map<String, dynamic> json) =>
    ListsCompanyDataRemoteResponse(
      listsCompanyData: (json['listsCompanyData'] as List<dynamic>?)
          ?.map((e) =>
              ListsCompanyDataResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ListsCompanyDataRemoteResponseToJson(
        ListsCompanyDataRemoteResponse instance) =>
    <String, dynamic>{
      'listsCompanyData': instance.listsCompanyData,
    };
