// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable
part of 'loginmoc_cubit.dart';

abstract class LoginmocState extends Equatable {
  const LoginmocState();

  @override
  List<Object> get props => [];
}

class LoginmocInitial extends LoginmocState {}

class LoginmocIsLoading extends LoginmocState {}

class LoginmocIsSuccess extends LoginmocState {
  UserLoginDataMoc? data;
  LoginmocIsSuccess({
    this.data,
  });
}

class LoginmocIsError extends LoginmocState {
  String? message;
  LoginmocIsError({
    this.message,
  });
}
