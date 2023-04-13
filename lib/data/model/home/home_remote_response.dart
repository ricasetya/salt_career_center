import 'package:json_annotation/json_annotation.dart';
import 'package:telkom_career/data/model/home/job_response.dart';
import 'package:telkom_career/domain/model/data/home/home_data.dart';

part 'home_remote_response.g.dart';

abstract class HomeRemoteResponseMapper {
  HomeData toHomeData();
}

@JsonSerializable()
class HomeRemoteResponse implements HomeRemoteResponseMapper {
  String? name;
  String? skill;
  String? photo;
  List<JobResponse>? jobs;
  HomeRemoteResponse(
    this.name,
    this.skill,
    this.photo,
    this.jobs,
  );

  factory HomeRemoteResponse.fromJson(Map<String, dynamic> json) =>
      _$HomeRemoteResponseFromJson(json);

  Map<String, dynamic> toJson() => _$HomeRemoteResponseToJson(this);

  @override
  HomeData toHomeData() {
    return HomeData(name ?? "", skill ?? "", photo ?? "",
        jobs!.map((e) => e.toJobsData()).toList());
  }
}
