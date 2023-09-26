// ignore_for_file: must_be_immutable

part of 'list_job_cubit.dart';

class ListJobState extends Equatable {
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
