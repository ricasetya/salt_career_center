// ignore_for_file: public_member_api_docs, sort_constructors_first
//import 'dart:math';

import 'package:json_annotation/json_annotation.dart';
import 'package:telkom_career/data/model/profile/ability_data_response.dart';
import 'package:telkom_career/data/model/profile/education_data_response.dart';
import 'package:telkom_career/data/model/profile/language_data_reponse.dart';
import 'package:telkom_career/data/model/profile/work_experience_data_response.dart';

//import 'package:telkom_career/domain/model/data/profile/ability_data.dart';
// import 'package:telkom_career/domain/model/data/profile/education_data.dart';
// import 'package:telkom_career/domain/model/data/profile/language_data.dart';
import 'package:telkom_career/domain/model/data/profile/profile_data.dart';
//import 'package:telkom_career/domain/model/data/profile/work_experience_data.dart';

part 'profile_data_remote_response.g.dart';

@JsonSerializable()
class ProfileDataRemoteResponse implements ProfileDataRemoteResponseMapper {
  String? name;
  String? photo;
  String? skill;
  String? phoneNumber;
  List<WorkExperienceDataResponse>? workExperience;
  List<EducationDataResponse>? education;
  List<AbilityDataResponse>? ability;
  List<LanguageDataResponse>? language;
  String? cvResume;
  String? portofolio;
  ProfileDataRemoteResponse({
    this.name,
    this.photo,
    this.skill,
    this.phoneNumber,
    this.workExperience,
    this.education,
    this.ability,
    this.language,
    this.cvResume,
    this.portofolio,
  });

  factory ProfileDataRemoteResponse.fromJson(Map<String, dynamic> json) =>
      _$ProfileDataRemoteResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ProfileDataRemoteResponseToJson(this);

  @override
  ProfileData toProfileData() {
    return ProfileData(
      name: name,
      photo: photo,
      skill: skill,
      phoneNumber: phoneNumber,
      workExperience:
          workExperience?.map((e) => e.toWorkExperienceData()).toList(),
      education: education?.map((e) => e.toEducationData()).toList(),
      ability: ability?.map((e) => e.toAbilityData()).toList(),
      language: language?.map((e) => e.toLanguageData()).toList(),
      cvResume: cvResume,
      portofolio: portofolio,
    );
  }
}

abstract class ProfileDataRemoteResponseMapper {
  ProfileData toProfileData();
}
