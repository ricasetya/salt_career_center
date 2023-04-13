// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:telkom_career/base/result_entity.dart';
import 'package:telkom_career/domain/base/authentication_header_request.dart';

import 'package:telkom_career/domain/model/data/list_job/list_job_data.dart';
import 'package:telkom_career/domain/repository/listjob/list_job_repository.dart';

part 'list_job_state.dart';

class ListJobCubit extends Cubit<ListJobState> {
  final ListJobRepository repository;
  ListJobCubit(
    this.repository,
  ) : super(ListJobInitial());

  Future<void> fetchListJob(AuthenticationHeaderRequest header) async {
    emit(ListJobIsLoading());

    final response = await repository.fetchListJob(header);
    if (response is ResultSuccess) {
      emit(ListJobIsSucces((response as ResultSuccess).data));
      print("Succes");
    } else {
      emit(ListJobIsError((response as ResultError).message!));
      print((response as ResultError).message);
    }
  }
}
