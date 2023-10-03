// ignore_for_file: must_be_immutable

part of 'add_work_experience_cubit.dart';

abstract class AddWorkExperienceState extends Equatable {
  const AddWorkExperienceState();

  @override
  List<Object> get props => [];
}

class AddWorkExperienceInitial extends AddWorkExperienceState {}

class AddWorkExperienceIsLoading extends AddWorkExperienceState {}

class AddWorkExperienceIsSuccess extends AddWorkExperienceState {
  String? message;
  AddWorkExperienceIsSuccess(this.message);
}

class AddWorkExperienceIsFailed extends AddWorkExperienceState {
  String? message;
  AddWorkExperienceIsFailed(this.message);
}
