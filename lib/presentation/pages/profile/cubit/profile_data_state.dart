// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable
part of 'profile_data_cubit.dart';

abstract class ProfileDataState extends Equatable {
  const ProfileDataState();

  @override
  List<Object> get props => [];
}

class ProfileDataInitial extends ProfileDataState {}

class ProfileDataIsLoading extends ProfileDataState {}

class ProfileDataIsEmpty extends ProfileDataState {}

class ProfileDataIsSuccess extends ProfileDataState {
  ProfileData data;
  ProfileDataIsSuccess(
    this.data,
  );
}

class ProfileDataIsError extends ProfileDataState {
  String? message;
  ProfileDataIsError({
    this.message,
  });
}
