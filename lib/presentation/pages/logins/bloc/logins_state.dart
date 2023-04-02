// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'logins_bloc.dart';

abstract class LoginsState extends Equatable {
  const LoginsState();

  @override
  List<Object> get props => [];
}

class LoginsInitial extends LoginsState {}

class LoginsIsLoading extends LoginsState {}

class LoginsSuccess extends LoginsState {
  final UserLoginsData data;
  LoginsSuccess({
    required this.data,
  });
}

class LoginsIsFailed extends LoginsState {
  String? message;
  LoginsIsFailed({
    this.message,
  });
}
