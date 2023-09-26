// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable
part of 'forget_password_update_cubit.dart';

abstract class ForgetPasswordUpdateState extends Equatable {
  const ForgetPasswordUpdateState();

  @override
  List<Object> get props => [];
}

class ForgetPasswordUpdateInitial extends ForgetPasswordUpdateState {}

class ForgetPasswordUpdateIsLoading extends ForgetPasswordUpdateState {}

class ForgetPasswordUpdateIsSuccess extends ForgetPasswordUpdateState {
  String? data;
  ForgetPasswordUpdateIsSuccess({
    this.data,
  });
}

class ForgetPasswordUpdateIsError extends ForgetPasswordUpdateState {
  String? message;
  ForgetPasswordUpdateIsError({
    this.message,
  });
}
