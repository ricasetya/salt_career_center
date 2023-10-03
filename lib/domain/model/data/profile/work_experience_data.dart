// ignore_for_file: non_constant_identifier_names

import 'package:telkom_career/domain/model/data/profile/get_profile/work_experience/date_range_data.dart';

class WorkExperienceData {
  String Id;
  String SkillExperience;
  String Name;
  bool StillWorking;
  DateRangeData DateRange;
  String Description;
  WorkExperienceData(
    this.Id,
    this.SkillExperience,
    this.Name,
    this.StillWorking,
    this.DateRange,
    this.Description,
  );
}
