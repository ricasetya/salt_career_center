// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable
part of 'lists_company_data_cubit.dart';

class ListsCompanyDataState extends Equatable {
  const ListsCompanyDataState();

  @override
  List<Object> get props => [];
}

class ListsCompanyDataInitial extends ListsCompanyDataState {}

class ListsCompanyDataIsLoading extends ListsCompanyDataState {}

class ListsCompanyDataIsEmpty extends ListsCompanyDataState {}

class ListsCompanyDataIsSucces extends ListsCompanyDataState {
  List<ListsCompanyData> data;
  ListsCompanyDataIsSucces(
    this.data,
  );
}

class ListsCompanyDataIsError extends ListsCompanyDataState {
  String message;
  ListsCompanyDataIsError(
    this.message,
  );
}
