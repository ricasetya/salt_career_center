// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'lists_jobs_cubit.dart';

abstract class ListsJobsState extends Equatable {
  const ListsJobsState();

  @override
  List<Object> get props => [];
}

class ListsJobsInitial extends ListsJobsState {}

class ListsJobsIsLoading extends ListsJobsState {}

class ListsJobsIsEmpty extends ListsJobsState {}

class ListsJobsIsSucces extends ListsJobsState {
  List<ListsJobsData> data;
  ListsJobsIsSucces(
    this.data,
  );
}

class ListsJobsIsError extends ListsJobsState {
  String? message;
  ListsJobsIsError({
    this.message,
  });
}
