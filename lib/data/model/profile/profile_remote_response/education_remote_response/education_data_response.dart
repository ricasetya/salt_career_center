// ignore_for_file: public_member_api_docs, sort_constructors_first, non_constant_identifier_names
import 'package:json_annotation/json_annotation.dart';
import 'package:telkom_career/data/model/profile/profile_remote_response/date_range_remote_response.dart';
import 'package:telkom_career/domain/model/data/profile/get_profile/education/education_data.dart';
import 'package:telkom_career/domain/model/data/profile/get_profile/work_experience/date_range_data.dart';

part 'education_data_response.g.dart';

@JsonSerializable()
class EducationDataResponse implements EducationDataResponseMapper {
  String? Id;
  String? Level;
  String? Name;
  String? Major;
  bool? SkillEducation;
  DateRangeRemoteResponse? DateRange;
  String? Description;
  EducationDataResponse({
    this.Id,
    this.Level,
    this.Name,
    this.Major,
    this.SkillEducation,
    this.DateRange,
    this.Description,
  });

  factory EducationDataResponse.fromJson(Map<String, dynamic> json) =>
      _$EducationDataResponseFromJson(json);

  Map<String, dynamic> toJson() => _$EducationDataResponseToJson(this);

  @override
  EducationData toEducationData() {
    return EducationData(
      Id: Id,
      Level: Level,
      Name: Name,
      Major: Major,
      SkillEducation: SkillEducation,
      DateRange: DateRange?.toDateRangeData() ??
          DateRangeData(
            Start: "",
            End: "",
          ),
    );
  }
}

abstract class EducationDataResponseMapper {
  EducationData toEducationData();
}
