// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'logins_bloc.dart';

abstract class LoginsEvent extends Equatable {
  const LoginsEvent();

  @override
  List<Object> get props => [];
}

class UserLoginsEvent extends LoginsEvent {
  final String userName;
  final String pass;
  UserLoginsEvent({
    required this.userName,
    required this.pass,
  });
}

class LogoutUser extends LoginsEvent {}
