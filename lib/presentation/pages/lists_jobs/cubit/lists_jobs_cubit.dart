import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:http/http.dart';
import 'package:telkom_career/base/result_entity.dart';
import 'package:telkom_career/domain/base/authentication_header_request.dart';
import 'package:telkom_career/domain/model/data/lists_jobs/lists_jobs_data.dart';
import 'package:telkom_career/domain/repository/lists_jobs/lists_jobs_repository.dart';

part 'lists_jobs_state.dart';

class ListsJobsCubit extends Cubit<ListsJobsState> {
  final ListsJobsRepository repository;
  ListsJobsCubit(
    this.repository,
  ) : super(ListsJobsInitial());

  Future<void> fetchJobs(AuthenticationHeaderRequest header) async {
    emit(ListsJobsIsLoading());
    final response = await repository.fetchJobs(header);
    if (response is ResultSuccess) {
      emit(ListsJobsIsSucces((response as ResultSuccess).data));
    } else {
      emit(ListsJobsIsError(message: (response as ResultError).message));
    }
  }
}
