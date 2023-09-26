// ignore_for_file: public_member_api_docs, sort_constructors_first, non_constant_identifier_names
import 'package:json_annotation/json_annotation.dart';
import 'package:telkom_career/domain/model/data/profile/get_profile/work_experience/date_range_data.dart';

part 'date_range_remote_response.g.dart';

@JsonSerializable()
class DateRangeRemoteResponse implements DateRangeRemoteResponseMapper {
  String? DateRange;
  DateRangeRemoteResponse({
    this.DateRange,
  });

  factory DateRangeRemoteResponse.fromJson(Map<String, dynamic> json) =>
      _$DateRangeRemoteResponseFromJson(json);

  Map<String, dynamic> toJson() => _$DateRangeRemoteResponseToJson(this);

  @override
  DateRangeData toDateRangeData() {
    return DateRangeData(
      Start: "",
      End: "",
    );
  }
}

abstract class DateRangeRemoteResponseMapper {
  DateRangeData toDateRangeData();
}
