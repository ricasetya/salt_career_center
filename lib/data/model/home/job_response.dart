import 'package:json_annotation/json_annotation.dart';
import 'package:telkom_career/domain/model/data/home/home_jobs.dart';

part 'job_response.g.dart';

abstract class JobResponseMapper {
  JobsData toJobsData();
}

@JsonSerializable()
class JobResponse implements JobResponseMapper {
  String? position;
  String? company;
  String? logo;
  String? address;
  String? createDate;

  JobResponse({
    this.position,
    this.company,
    this.logo,
    this.address,
    this.createDate,
  });

  factory JobResponse.fromJson(Map<String, dynamic> json) =>
      _$JobResponseFromJson(json);

  Map<String, dynamic> toJson() => _$JobResponseToJson(this);

  @override
  JobsData toJobsData() {
    return JobsData(position ?? "", company ?? "", logo ?? "", address ?? "",
        createDate ?? "");
  }
}
