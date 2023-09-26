// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:telkom_career/domain/model/data/profile/get_profile/ability_data.dart';
import 'package:telkom_career/domain/model/data/profile/get_profile/education/education_data.dart';
import 'package:telkom_career/domain/model/data/profile/get_profile/language_data.dart';
import 'package:telkom_career/domain/model/data/profile/get_profile/work_experience/work_experience_data.dart';

class ProfileData {
  String? email;
  String? name;
  String? photo;
  String? urlPhoto;
  String? skill;
  String? phoneNumber;
  List<WorkExperienceData>? workExperience;
  List<EducationData>? education;
  List<String>? ability;
  List<String>? language;
  // List<AbilityData>? ability;
  // List<LanguageData>? language;
  String? cvResume;
  String? portofolio;
  String? urlPortofolio;
  String? createdAt;
  String? updateAt;
  ProfileData({
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
}
