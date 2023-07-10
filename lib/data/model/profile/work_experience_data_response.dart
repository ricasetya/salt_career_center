// ignore_for_file: public_member_api_docs, sort_constructors_first
//import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';
import 'package:telkom_career/domain/model/data/profile/work_experience_data.dart';

part 'work_experience_data_response.g.dart';

@JsonSerializable()
class WorkExperienceDataResponse implements WorkExperienceDataResponseMapper {
  String? skillExperience;
  String? name;
  String? startWork;
  String? endWork;
  String? description;
  WorkExperienceDataResponse({
    this.skillExperience,
    this.name,
    this.startWork,
    this.endWork,
    this.description,
  });

  factory WorkExperienceDataResponse.fromJson(Map<String, dynamic> json) =>
      _$WorkExperienceDataResponseFromJson(json);

  Map<String, dynamic> toJson() => _$WorkExperienceDataResponseToJson(this);

  @override
  WorkExperienceData toWorkExperienceData() {
    return WorkExperienceData(
      name: name,
      description: description,
      skillExperience: skillExperience,
      startWork: startWork,
      endWork: endWork,
    );
  }
}

abstract class WorkExperienceDataResponseMapper {
  WorkExperienceData toWorkExperienceData();
}
