// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';
import 'package:telkom_career/domain/model/data/lists_company/lists_company_data.dart';

part 'lists_company_data_response.g.dart';

@JsonSerializable()
class ListsCompanyDataResponse implements ListsCompanyDataResponseMapper {
  String? name;
  String? typeCompany;
  String? address;
  String? logo;
  String? id;
  ListsCompanyDataResponse({
    this.name,
    this.typeCompany,
    this.address,
    this.logo,
    this.id,
  });

  factory ListsCompanyDataResponse.fromJson(Map<String, dynamic> json) =>
      _$ListsCompanyDataResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ListsCompanyDataResponseToJson(this);

  @override
  ListsCompanyData toListsCompanyData() {
    return ListsCompanyData(
      name: name,
      typeCompany: typeCompany,
      address: address,
      logo: logo,
      id: id,
    );
  }
}

abstract class ListsCompanyDataResponseMapper {
  ListsCompanyData toListsCompanyData();
}
