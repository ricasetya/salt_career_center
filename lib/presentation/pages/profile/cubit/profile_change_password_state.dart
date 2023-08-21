// ignore_for_file: public_member_api_docs, sort_constructors_first, prefer_const_constructors_in_immutables, must_be_immutable
part of 'profile_change_password_cubit.dart';

abstract class ProfileChangePasswordState extends Equatable {
  const ProfileChangePasswordState();

  @override
  List<Object> get props => [];
}

class ProfileChangePasswordInitial extends ProfileChangePasswordState {}

class ProfileChangePasswordIsLoading extends ProfileChangePasswordState {}

class ProfileChangePasswordIsSucces extends ProfileChangePasswordState {
  String? message;
  ProfileChangePasswordIsSucces(
    this.message,
  );
}

class ProfileChangePasswordIsFailed extends ProfileChangePasswordState {
  String? message;
  ProfileChangePasswordIsFailed({
    this.message,
  });
}
