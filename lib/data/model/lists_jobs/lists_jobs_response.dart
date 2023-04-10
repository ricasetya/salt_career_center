// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';
import 'package:telkom_career/data/model/lists_jobs/lists_jobs_remote_response.dart';
import 'package:telkom_career/domain/model/data/lists_jobs/lists_jobs_data.dart';

part "lists_jobs_response.g.dart";

@JsonSerializable()
class ListsJobsResponse implements ListsJobsResponseMapper {
  List<ListsJobsRemoteResponse>? listsJobs;

  ListsJobsResponse({
    this.listsJobs,
  });

  factory ListsJobsResponse.fromJson(Map<String, dynamic> json) =>
      _$ListsJobsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ListsJobsResponseToJson(this);

  @override
  List<ListsJobsData> toListsJobsData() {
    return listsJobs!.map((e) => e.toListsJobsData()).toList();
  }
}

abstract class ListsJobsResponseMapper {
  List<ListsJobsData> toListsJobsData();
}
