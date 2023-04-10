// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';
import 'package:telkom_career/domain/model/data/company/about_company_data.dart';

part 'about_company_data_response.g.dart';

@JsonSerializable()
class AboutCompanyDataResponse implements AboutCompanyDataResponseMapper {
  String? profile;
  String? website;
  String? location;
  AboutCompanyDataResponse({
    this.profile,
    this.website,
    this.location,
  });

  factory AboutCompanyDataResponse.fromJson(Map<String, dynamic> json) =>
      _$AboutCompanyDataResponseFromJson(json);

  Map<String, dynamic> toJson() => _$AboutCompanyDataResponseToJson(this);

  @override
  AboutCompanyData toAboutCompanyData() {
    return AboutCompanyData(
      profile: profile,
      website: website,
      location: location,
    );
  }
}

abstract class AboutCompanyDataResponseMapper {
  AboutCompanyData toAboutCompanyData();
}
