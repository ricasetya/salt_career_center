// ignore_for_file: public_member_api_docs, sort_constructors_first, depend_on_referenced_packages, avoid_print, unnecessary_brace_in_string_interps
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:telkom_career/base/result_entity.dart';
import 'package:telkom_career/domain/base/authentication_header_request.dart';
import 'package:telkom_career/domain/model/data/lists_company/lists_company_data.dart';
import 'package:telkom_career/domain/repository/lists_company/lists_company_data_repository.dart';

import '../../../../data/utilities/commons.dart';

part 'lists_company_data_state.dart';

class ListsCompanyDataCubit extends Cubit<ListsCompanyDataState> {
  final ListsCompanyDataRepository repository;
  ListsCompanyDataCubit(
    this.repository,
  ) : super(const ListsCompanyDataState());

  Future<void> fetchListsCompany() async {
    final token = await Commons().getUid();
    print("TOKEN jobLIST = ${token}");

    final response =
        await repository.fetchListsCompany(AuthenticationHeaderRequest(token));
    if (response is ResultSuccess) {
      emit(ListsCompanyDataIsSucces((response as ResultSuccess).data));
      print("sukses");
    } else {
      emit(ListsCompanyDataIsError((response as ResultError).message!));
      print("error");
    }
  }
}
