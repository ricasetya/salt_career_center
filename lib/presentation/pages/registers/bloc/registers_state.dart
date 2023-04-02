part of 'registers_bloc.dart';

abstract class RegistersState extends Equatable {
  const RegistersState();

  @override
  List<Object> get props => [];
}

class RegistersInitial extends RegistersState {}

class RegistersIsLoading extends RegistersState {}

class RegistersIsSuccess extends RegistersState {
  final UserRegistersData data;
  RegistersIsSuccess({
    required this.data,
  });
}

class RegistersIsFailed extends RegistersState {
  String? message;
  RegistersIsFailed({
    this.message,
  });
}
