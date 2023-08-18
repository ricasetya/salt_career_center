// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable
part of 'forget_password_otp_cubit.dart';

abstract class ForgetPasswordOtpState extends Equatable {
  const ForgetPasswordOtpState();

  @override
  List<Object> get props => [];
}

class ForgetPasswordOtpInitial extends ForgetPasswordOtpState {}

class ForgetPasswordOtpIsLoading extends ForgetPasswordOtpState {}

class ForgetPasswordOtpIsSuccess extends ForgetPasswordOtpState {
  String data;
  ForgetPasswordOtpIsSuccess({
    required this.data,
  });
}

class ForgetPasswordOtpIsError extends ForgetPasswordOtpState {
  String? message;
  ForgetPasswordOtpIsError({
    this.message,
  });
}
