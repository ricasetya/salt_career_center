import 'package:json_annotation/json_annotation.dart';
import 'package:telkom_career/data/model/lists_company/lists_company_data_response.dart';
import 'package:telkom_career/domain/model/data/lists_company/lists_company_data.dart';

part 'lists_company_data_remote_response.g.dart';

@JsonSerializable()
class ListsCompanyDataRemoteResponse
    implements ListsCompanyDataRemoteResponseMapper {
  List<ListsCompanyDataResponse>? listsCompanyData;

  ListsCompanyDataRemoteResponse({
    this.listsCompanyData,
  });

  factory ListsCompanyDataRemoteResponse.fromJson(Map<String, dynamic> json) =>
      _$ListsCompanyDataRemoteResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ListsCompanyDataRemoteResponseToJson(this);

  @override
  List<ListsCompanyData> toListsCompanyData() {
    return listsCompanyData!.map((e) => e.toListsCompanyData()).toList();
  }
}

abstract class ListsCompanyDataRemoteResponseMapper {
  List<ListsCompanyData> toListsCompanyData();
}
