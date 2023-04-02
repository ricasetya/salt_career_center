part of 'registers_bloc.dart';

abstract class RegistersEvent extends Equatable {
  const RegistersEvent();

  @override
  List<Object> get props => [];
}

class UserRegistersEvent extends RegistersEvent {
  final String email;
  final String name;
  final String password;
  UserRegistersEvent({
    required this.email,
    required this.name,
    required this.password,
  });
}

class LogoutUser extends RegistersEvent {}
