// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable
part of 'forget_password_cubit.dart';

abstract class ForgetPasswordState extends Equatable {
  const ForgetPasswordState();

  @override
  List<Object> get props => [];
}

class ForgetPasswordInitial extends ForgetPasswordState {}

class ForgetPasswordIsLoading extends ForgetPasswordState {}

class ForgetPasswordIsSuccess extends ForgetPasswordState {
  String message;
  ForgetPasswordIsSuccess({
    required this.message,
  });
}

class ForgetPasswordIsError extends ForgetPasswordState {
  String? message;
  ForgetPasswordIsError({
    this.message,
  });
}
