// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListResponse _$ListResponseFromJson(Map<String, dynamic> json) => ListResponse(
      logo: json['logo'] as String?,
      position: json['position'] as String?,
      company: json['company'] as String?,
      address: json['address'] as String?,
      createdDate: json['createdDate'] as String?,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$ListResponseToJson(ListResponse instance) =>
    <String, dynamic>{
      'logo': instance.logo,
      'position': instance.position,
      'company': instance.company,
      'address': instance.address,
      'createdDate': instance.createdDate,
      'id': instance.id,
    };
