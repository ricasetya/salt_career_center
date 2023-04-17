// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'company_data_cubit.dart';

abstract class CompanyDataState extends Equatable {
  const CompanyDataState();

  @override
  List<Object> get props => [];
}

class CompanyDataInitial extends CompanyDataState {}

class CompanyDataIsLoading extends CompanyDataState {}

class CompanyDataIsEmpty extends CompanyDataState {}

class CompanyDataIsSucces extends CompanyDataState {
  CompanyData data;
  CompanyDataIsSucces(
    this.data,
  );
}

class CompanyDataIsError extends CompanyDataState {
  String? message;
  CompanyDataIsError({
    this.message,
  });
}
