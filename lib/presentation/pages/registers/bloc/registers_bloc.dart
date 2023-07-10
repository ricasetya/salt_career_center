// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:telkom_career/base/result_entity.dart';
import 'package:telkom_career/domain/model/data/registers/registers_user_data.dart';
import 'package:telkom_career/domain/repository/registers/registers_repository.dart';

part 'registers_event.dart';
part 'registers_state.dart';

class RegistersBloc extends Bloc<RegistersEvent, RegistersState> {
  final RegistersRepository registersRepository;
  RegistersBloc(this.registersRepository) : super(RegistersInitial()) {
    on<UserRegistersEvent>((event, emit) async {
      emit(RegistersIsLoading());
      final response = await registersRepository.registers(
          event.email, event.name, event.password);
      if (response is ResultSuccess) {
        emit(RegistersIsSuccess(data: (response as ResultSuccess).data));
      } else if (response is ResultError) {
        emit(RegistersIsFailed(message: "Register Succes"));
      }
    });
  }
}
