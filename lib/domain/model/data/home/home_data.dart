// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:telkom_career/domain/model/data/home/home_jobs.dart';

class HomeData {
  String name;
  String skill;
  String photo;
  List<JobsData> jobs;

  HomeData(
    this.name,
    this.skill,
    this.photo,
    this.jobs,
  );
}
