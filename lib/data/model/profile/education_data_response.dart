// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';
import 'package:telkom_career/domain/model/data/profile/education_data.dart';

part 'education_data_response.g.dart';

@JsonSerializable()
class EducationDataResponse implements EducationDataResponseMapper {
  String? name;
  String? startEducation;
  String? endEducation;
  String? skillExperience;
  String? description;
  EducationDataResponse({
    this.name,
    this.startEducation,
    this.endEducation,
    this.skillExperience,
    this.description,
  });

  factory EducationDataResponse.fromJson(Map<String, dynamic> json) =>
      _$EducationDataResponseFromJson(json);

  Map<String, dynamic> toJson() => _$EducationDataResponseToJson(this);

  @override
  EducationData toEducationData() {
    return EducationData(
      name: name,
      description: description,
      skillExperience: skillExperience,
      startEducation: startEducation,
      endEducation: endEducation,
    );
  }
}

abstract class EducationDataResponseMapper {
  EducationData toEducationData();
}
