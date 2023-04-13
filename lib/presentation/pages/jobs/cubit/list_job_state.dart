part of 'list_job_cubit.dart';

abstract class ListJobState extends Equatable {
  const ListJobState();

  @override
  List<Object> get props => [];
}

class ListJobInitial extends ListJobState {}

class ListJobIsSucces extends ListJobState {
  List<ListJobData> data;
  ListJobIsSucces(
    this.data,
  );
}

class ListJobIsError extends ListJobState {
  String message;
  ListJobIsError(
    this.message,
  );
}

class ListJobIsLoading extends ListJobState {}
