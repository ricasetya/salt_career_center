// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'profile_update_cv_resume_cubit.dart';

class ProfileUpdateCvResumeState extends Equatable {
  const ProfileUpdateCvResumeState();

  @override
  List<Object> get props => [];
}

class ProfileUpdateCvResumeInitial extends ProfileUpdateCvResumeState {}

class ProfileUpdateCvResumeIsLoading extends ProfileUpdateCvResumeState {}

class ProfileUpdateCvResumeIsSuccess extends ProfileUpdateCvResumeState {
  String message;
  ProfileUpdateCvResumeIsSuccess({
    required this.message,
  });
}

class ProfileUpdateCvResumeIsFailed extends ProfileUpdateCvResumeState {
  String message;
  ProfileUpdateCvResumeIsFailed({
    required this.message,
  });
}
