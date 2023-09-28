// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable
part of 'profile_add_education_cubit.dart';

class ProfileAddEducationState extends Equatable {
  const ProfileAddEducationState();

  @override
  List<Object> get props => [];
}

class ProfileAddEducationInitial extends ProfileAddEducationState {}

class ProfileAddEducationIsLoading extends ProfileAddEducationState {}

class ProfileAddEducationIsSuccess extends ProfileAddEducationState {
  String? message;
  ProfileAddEducationIsSuccess(
    this.message,
  );
}

class ProfileAddEducationIsFailed extends ProfileAddEducationState {
  String? message;
  ProfileAddEducationIsFailed(
    this.message,
  );
}
