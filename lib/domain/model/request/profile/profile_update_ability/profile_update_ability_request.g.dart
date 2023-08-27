// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_update_ability_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProfileUpdateAbilityRequest _$ProfileUpdateAbilityRequestFromJson(
        Map<String, dynamic> json) =>
    ProfileUpdateAbilityRequest(
      (json['ability'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$ProfileUpdateAbilityRequestToJson(
        ProfileUpdateAbilityRequest instance) =>
    <String, dynamic>{
      'ability': instance.ability,
    };
