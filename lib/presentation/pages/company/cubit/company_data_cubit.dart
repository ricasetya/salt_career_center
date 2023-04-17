// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:telkom_career/base/result_entity.dart';
import 'package:telkom_career/domain/base/authentication_header_request.dart';

import 'package:telkom_career/domain/model/data/company/company_data.dart';
import 'package:telkom_career/domain/repository/company/company_data_repository.dart';

part 'company_data_state.dart';

class CompanyDataCubit extends Cubit<CompanyDataState> {
  final CompanyDataRepository repository;
  CompanyDataCubit(
    this.repository,
  ) : super(CompanyDataInitial());

  Future<void> fetchCompanyData(
      AuthenticationHeaderRequest header, String id) async {
    emit(CompanyDataIsLoading());
    final response = await repository.fetchCompanyData(header, id);
    if (response is ResultSuccess) {
      emit(CompanyDataIsSucces((response as ResultSuccess).data));
    } else {
      emit(CompanyDataIsError(message: (response as ResultError).message));
    }
  }
}
