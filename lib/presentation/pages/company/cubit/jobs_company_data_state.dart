// ignore_for_file: must_be_immutable

part of 'jobs_company_data_cubit.dart';

abstract class JobsCompanyDataState extends Equatable {
  const JobsCompanyDataState();

  @override
  List<Object> get props => [];
}

class JobsCompanyDataInitial extends JobsCompanyDataState {}

class JobsCompanyDataIsLoading extends JobsCompanyDataState {}

class JobsCompanyDataIsEmpty extends JobsCompanyDataState {}

class JobsCompanyDataIsSucces extends JobsCompanyDataState {
  List<JobsCompanyData> data;
  JobsCompanyDataIsSucces(
    this.data,
  );
}

class JobsCompanyDataIsError extends JobsCompanyDataState {
  String? message;
  JobsCompanyDataIsError({
    this.message,
  });
}
