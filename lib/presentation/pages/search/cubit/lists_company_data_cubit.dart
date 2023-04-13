// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:telkom_career/base/result_entity.dart';
import 'package:telkom_career/domain/base/authentication_header_request.dart';

import 'package:telkom_career/domain/model/data/lists_company/lists_company_data.dart';
import 'package:telkom_career/domain/repository/lists_company/lists_company_data_repository.dart';

part 'lists_company_data_state.dart';

class ListsCompanyDataCubit extends Cubit<ListsCompanyDataState> {
  final ListsCompanyDataRepository repository;
  ListsCompanyDataCubit(
    this.repository,
  ) : super(ListsCompanyDataInitial());

  Future<void> fetchListsCompanyData(AuthenticationHeaderRequest header) async {
    emit(ListsCompanyDataIsLoading());
    final response = await repository.fetchListsCompany(header);
    if (response is ResultSuccess) {
      emit(ListsCompanyDataIsSucces(data: (response as ResultSuccess).data));
      print("sukses");
    } else {
      emit(ListsCompanyDataIsError(message: (response as ResultError).message));
      print("error");
    }
  }
}
