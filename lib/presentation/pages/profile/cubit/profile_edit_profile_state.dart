// ignore_for_file: public_member_api_docs, sort_constructors_first, prefer_const_constructors_in_immutables, must_be_immutable
part of 'profile_edit_profile_cubit.dart';

class ProfileEditProfileState extends Equatable {
  const ProfileEditProfileState();

  @override
  List<Object> get props => [];
}

class ProfileEditProfileInitial extends ProfileEditProfileState {}

class ProfileEditProfileIsLoading extends ProfileEditProfileState {}

class ProfileEditProfileIsLoaded extends ProfileEditProfileState {}

class ProfileEditProfileIsSuccess extends ProfileEditProfileState {
  final ProfileEditProfileData data;
  ProfileEditProfileIsSuccess({
    required this.data,
  });
}

class ProfileEditProfileIsFailed extends ProfileEditProfileState {
  String? message;
  ProfileEditProfileIsFailed({
    this.message,
  });
}
