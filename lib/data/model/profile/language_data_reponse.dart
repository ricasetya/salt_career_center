// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';
import 'package:telkom_career/domain/model/data/profile/language_data.dart';

part 'language_data_reponse.g.dart';

@JsonSerializable()
class LanguageDataResponse implements LanguageDataResponseMapper {
  String? language;
  LanguageDataResponse({
    this.language,
  });

  factory LanguageDataResponse.fromJson(Map<String, dynamic> json) =>
      _$LanguageDataResponseFromJson(json);

  Map<String, dynamic> toJson() => _$LanguageDataResponseToJson(this);

  @override
  LanguageData toLanguageData() {
    return LanguageData(language: language);
  }
}

abstract class LanguageDataResponseMapper {
  LanguageData toLanguageData();
}
