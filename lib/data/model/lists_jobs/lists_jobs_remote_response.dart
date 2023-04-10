// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';
import 'package:telkom_career/domain/model/data/lists_jobs/lists_jobs_data.dart';

part 'lists_jobs_remote_response.g.dart';

@JsonSerializable()
class ListsJobsRemoteResponse implements ListsJobsRemoteResponseMapper {
  String? id;
  String? logo;
  String? position;
  String? company;
  String? address;
  String? createdDate;
  ListsJobsRemoteResponse({
    this.id,
    this.logo,
    this.position,
    this.company,
    this.address,
    this.createdDate,
  });
  factory ListsJobsRemoteResponse.fromJson(Map<String, dynamic> json) =>
      _$ListsJobsRemoteResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ListsJobsRemoteResponseToJson(this);

  @override
  ListsJobsData toListsJobsData() {
    return ListsJobsData(
      id: id,
      logo: logo,
      position: position,
      company: company,
      address: address,
      createdDate: createdDate,
    );
  }
}

abstract class ListsJobsRemoteResponseMapper {
  ListsJobsData toListsJobsData();
}
