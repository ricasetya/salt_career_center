// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable
part of 'profile_update_ability_cubit.dart';

class ProfileUpdateAbilityState extends Equatable {
  const ProfileUpdateAbilityState();

  @override
  List<Object> get props => [];
}

class ProfileUpdateAbilityInitial extends ProfileUpdateAbilityState {}

class ProfileUpdateAbilityIsLoading extends ProfileUpdateAbilityState {}

class ProfileUpdateAbilityIsSuccess extends ProfileUpdateAbilityState {
  String? message;
  ProfileUpdateAbilityIsSuccess(
    this.message,
  );
}

class ProfileUpdateAbilityIsFailed extends ProfileUpdateAbilityState {
  String? message;
  ProfileUpdateAbilityIsFailed({
    this.message,
  });
}
