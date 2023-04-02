import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:telkom_career/base/result_entity.dart';
import 'package:telkom_career/data/utilities/commons.dart';
import 'package:telkom_career/domain/model/register/register_user_data.dart';
import 'package:telkom_career/domain/repository/register/register_repository.dart';

part 'register_event.dart';
part 'register_state.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  final RegisterRepository repository;
  RegisterBloc(this.repository) : super(RegisterInitial()) {
    on<UserRegisterEvent>((event, emit) async {
      emit(RegisterIsLoading());
      final response =
          await repository.userRegister(event.userName, event.nama, event.pass);
      if (response is ResultSuccess) {
        emit(
          RegisterIsSuccess(data: (response as ResultSuccess).data),
        );
        final data = (state as RegisterIsSuccess).data;
      } else {
        emit(RegisterIsFailed(message: (response as ResultError).message));
      }
    });
  }
}
