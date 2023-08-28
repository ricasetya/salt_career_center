// ignore_for_file: public_member_api_docs, sort_constructors_first
//import 'dart:math';

import 'package:json_annotation/json_annotation.dart';

import 'package:telkom_career/data/model/profile/profile_remote_response/ability_remote_response/ability_data_response.dart';
import 'package:telkom_career/data/model/profile/profile_remote_response/education_remote_response/education_data_response.dart';
import 'package:telkom_career/data/model/profile/profile_remote_response/language_remote_response/language_data_reponse.dart';
import 'package:telkom_career/data/model/profile/profile_remote_response/work_experience_remote_response/work_experience_data_response.dart';
import 'package:telkom_career/domain/model/data/profile/profile_data.dart';

part 'profile_data_remote_response.g.dart';

@JsonSerializable()
class ProfileDataRemoteResponse implements ProfileDataRemoteResponseMapper {
  String? email;
  String? name;
  String? photo;
  String? urlPhoto;
  String? skill;
  String? phoneNumber;
  List<WorkExperienceDataResponse>? workExperience;
  List<EducationDataResponse>? education;
  List<AbilityDataResponse>? ability;
  List<LanguageDataResponse>? language;
  String? cvResume;
  String? portofolio;
  String? urlPortofolio;
  String? createdAt;
  String? updateAt;
  ProfileDataRemoteResponse({
    this.email,
    this.name,
    this.photo,
    this.urlPhoto,
    this.skill,
    this.phoneNumber,
    this.workExperience,
    this.education,
    this.ability,
    this.language,
    this.cvResume,
    this.portofolio,
    this.urlPortofolio,
    this.createdAt,
    this.updateAt,
  });

  factory ProfileDataRemoteResponse.fromJson(Map<String, dynamic> json) =>
      _$ProfileDataRemoteResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ProfileDataRemoteResponseToJson(this);

  @override
  ProfileData toProfileData() {
    return ProfileData(
      email: email,
      name: name,
      photo: photo,
      urlPhoto: urlPhoto,
      skill: skill,
      phoneNumber: phoneNumber,
      workExperience:
          workExperience?.map((e) => e.toWorkExperienceData()).toList(),
      education: education?.map((e) => e.toEducationData()).toList(),
      ability: ability?.map((e) => e.toAbilityData()).toList(),
      language: language?.map((e) => e.toLanguageData()).toList(),
      cvResume: cvResume,
      portofolio: portofolio,
      urlPortofolio: urlPortofolio,
      createdAt: createdAt,
      updateAt: updateAt,
    );
  }
}

abstract class ProfileDataRemoteResponseMapper {
  ProfileData toProfileData();
}
