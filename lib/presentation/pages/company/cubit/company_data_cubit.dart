// ignore_for_file: public_member_api_docs, sort_constructors_first, unnecessary_brace_in_string_interps, avoid_print
// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:telkom_career/base/result_entity.dart';
import 'package:telkom_career/data/utilities/commons.dart';
import 'package:telkom_career/domain/base/authentication_header_request.dart';

import 'package:telkom_career/domain/model/data/company/company_data.dart';
import 'package:telkom_career/domain/repository/company/company_data_repository.dart';

part 'company_data_state.dart';

class CompanyDataCubit extends Cubit<CompanyDataState> {
  final CompanyDataRepository repository;
  CompanyDataCubit(
    this.repository,
  ) : super(const CompanyDataState());

  // header tidak perlu dipanggil, ini untuk pemanggilan di screen
  Future<void> onSubmitCompanyData(String id) async {
    print("Company detail");
    // Get Token
    final token = await Commons().getUid();
    print("TOKEN company = ${token}");

    // ini ambil dari repository untuk mengambil fuungsi compani dari repository
    final response = await repository.fetchCompanyData(
        AuthenticationHeaderRequest(token), id);
    if (response is ResultSuccess) {
      emit(CompanyDataIsSucces((response as ResultSuccess).data));
      print("Succes");
    } else {
      emit(CompanyDataIsError(message: (response as ResultError).message!));
      print((response as ResultError).message);
    }
  }
}
