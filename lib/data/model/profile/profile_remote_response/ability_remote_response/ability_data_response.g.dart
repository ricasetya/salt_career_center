// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ability_data_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AbilityDataResponse _$AbilityDataResponseFromJson(Map<String, dynamic> json) =>
    AbilityDataResponse(
      ability:
          (json['ability'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$AbilityDataResponseToJson(
        AbilityDataResponse instance) =>
    <String, dynamic>{
      'ability': instance.ability,
    };
