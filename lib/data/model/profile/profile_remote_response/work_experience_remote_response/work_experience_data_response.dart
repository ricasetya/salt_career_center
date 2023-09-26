// ignore_for_file: public_member_api_docs, sort_constructors_first, non_constant_identifier_names
//import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

import 'package:telkom_career/data/model/profile/profile_remote_response/date_range_remote_response.dart';
import 'package:telkom_career/domain/model/data/profile/get_profile/work_experience/date_range_data.dart';
import 'package:telkom_career/domain/model/data/profile/get_profile/work_experience/work_experience_data.dart';

part 'work_experience_data_response.g.dart';

@JsonSerializable()
class WorkExperienceDataResponse implements WorkExperienceDataResponseMapper {
  String? Id;
  String? SkillExperience;
  String? Name;
  bool? StillWorking;
  DateRangeRemoteResponse? DateRange;
  String? Description;
  WorkExperienceDataResponse({
    this.Id,
    this.SkillExperience,
    this.Name,
    this.StillWorking,
    this.DateRange,
    this.Description,
  });

  factory WorkExperienceDataResponse.fromJson(Map<String, dynamic> json) =>
      _$WorkExperienceDataResponseFromJson(json);

  Map<String, dynamic> toJson() => _$WorkExperienceDataResponseToJson(this);

  @override
  WorkExperienceData toWorkExperienceData() {
    return WorkExperienceData(
      Id ?? "",
      SkillExperience ?? "",
      Name ?? "",
      StillWorking!,
      DateRange?.toDateRangeData() ??
          DateRangeData(
            Start: "",
            End: "",
          ),
      Description ?? "",
    );
  }
}

abstract class WorkExperienceDataResponseMapper {
  WorkExperienceData toWorkExperienceData();
}
