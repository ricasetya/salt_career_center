// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable
part of 'about_company_data_cubit.dart';

abstract class AboutCompanyDataState extends Equatable {
  const AboutCompanyDataState();

  @override
  List<Object> get props => [];
}

class AboutCompanyDataInitial extends AboutCompanyDataState {}

class AboutCompanyDataIsLoading extends AboutCompanyDataState {}

class AboutCompanyDataIsEmpty extends AboutCompanyDataState {}

class AboutCompanyDataIsSucces extends AboutCompanyDataState {
  AboutCompanyData data;
  AboutCompanyDataIsSucces(
    this.data,
  );
}

class AboutCompanyDataIsError extends AboutCompanyDataState {
  String? message;
  AboutCompanyDataIsError({
    this.message,
  });
}
