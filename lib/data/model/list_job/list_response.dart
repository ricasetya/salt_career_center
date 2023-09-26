import 'package:json_annotation/json_annotation.dart';
import 'package:telkom_career/domain/model/data/list_job/list_job_data.dart';

part 'list_response.g.dart';

abstract class ListResponseMapper {
  ListJobData toListJobData();
}

@JsonSerializable()
class ListResponse implements ListResponseMapper {
  String? logo;
  String? position;
  String? company;
  String? address;
  String? createdAt;
  bool? status;
  String? id;
  ListResponse({
    this.logo,
    this.position,
    this.company,
    this.address,
    this.createdAt,
    this.status,
    this.id,
  });

  factory ListResponse.fromJson(Map<String, dynamic> json) =>
      _$ListResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ListResponseToJson(this);

  @override
  ListJobData toListJobData() {
    return ListJobData(
      logo ?? "",
      position ?? "",
      company ?? "",
      address ?? "",
      createdAt ?? "",
      id ?? "",
      status!,
    );
  }
}
