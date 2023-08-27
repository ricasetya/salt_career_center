// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable
part of 'profile_update_language_cubit.dart';

class ProfileUpdateLanguageState extends Equatable {
  const ProfileUpdateLanguageState();

  @override
  List<Object> get props => [];
}

class ProfileUpdateLanguageInitial extends ProfileUpdateLanguageState {}

class ProfileUpdateLanguageIsLoading extends ProfileUpdateLanguageState {}

class ProfileUpdateLanguageIsSuccess extends ProfileUpdateLanguageState {
  String? message;
  ProfileUpdateLanguageIsSuccess(
    this.message,
  );
}

class ProfileUpdateLanguageIsFailed extends ProfileUpdateLanguageState {
  String? message;
  ProfileUpdateLanguageIsFailed({
    this.message,
  });
}
