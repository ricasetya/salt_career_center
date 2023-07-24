// ignore_for_file: public_member_api_docs, sort_constructors_first, avoid_print, depend_on_referenced_packages, unnecessary_brace_in_string_interps
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:telkom_career/base/result_entity.dart';
import 'package:telkom_career/data/utilities/commons.dart';
import 'package:telkom_career/domain/base/authentication_header_request.dart';

import 'package:telkom_career/domain/model/data/list_job/list_job_data.dart';
import 'package:telkom_career/domain/repository/listjob/list_job_repository.dart';

part 'list_job_state.dart';

class ListJobCubit extends Cubit<ListJobState> {
  final ListJobRepository repository;
  ListJobCubit(
    this.repository,
  ) : super(const ListJobState());

  Future<void> fetchListJob() async {
    // get token
    final token = await Commons().getUid();
    print("TOKEN jobLIST = ${token}");

    final response =
        await repository.fetchListJob(AuthenticationHeaderRequest(token));
    if (response is ResultSuccess) {
      emit(ListJobIsSucces((response as ResultSuccess).data));
      print("Succes");
    } else {
      emit(ListJobIsError((response as ResultError).message!));
      print((response as ResultError).message);
    }
  }
}
