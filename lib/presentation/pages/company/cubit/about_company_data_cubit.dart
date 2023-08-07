// ignore_for_file: public_member_api_docs, sort_constructors_first, depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
//import 'package:telkom_career/base/result_entity.dart';
//import 'package:telkom_career/domain/base/authentication_header_request.dart';

import 'package:telkom_career/domain/model/data/company/about_company_data.dart';
import 'package:telkom_career/domain/repository/company/company_data_repository.dart';

part 'about_company_data_state.dart';

class AboutCompanyDataCubit extends Cubit<AboutCompanyDataState> {
  final CompanyDataRepository repository;
  AboutCompanyDataCubit(
    this.repository,
  ) : super(AboutCompanyDataInitial());
}
