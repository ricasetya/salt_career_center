// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';

import 'package:telkom_career/domain/model/data/profile/ability_data.dart';

part 'ability_data_response.g.dart';

@JsonSerializable()
class AbilityDataResponse implements AbilityDataResponseMApper {
  String? ability;
  AbilityDataResponse({
    this.ability,
  });

  factory AbilityDataResponse.fromJson(Map<String, dynamic> json) =>
      _$AbilityDataResponseFromJson(json);

  Map<String, dynamic> toJson() => _$AbilityDataResponseToJson(this);

  @override
  AbilityData toAbilityData() {
    return AbilityData(
      ability: ability,
    );
  }
}

abstract class AbilityDataResponseMApper {
  AbilityData toAbilityData();
}
