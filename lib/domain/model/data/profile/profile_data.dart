// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:telkom_career/domain/model/data/profile/ability_data.dart';
import 'package:telkom_career/domain/model/data/profile/education_data.dart';
import 'package:telkom_career/domain/model/data/profile/language_data.dart';
import 'package:telkom_career/domain/model/data/profile/work_experience_data.dart';

class ProfileData {
  String? name;
  String? photo;
  String? skill;
  String? phoneNumber;
  List<WorkExperienceData>? workExperience;
  List<EducationData>? education;
  List<AbilityData>? ability;
  List<LanguageData>? language;
  String? cvResume;
  String? portofolio;
  ProfileData({
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
}
