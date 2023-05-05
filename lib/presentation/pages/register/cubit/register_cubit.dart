import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:telkom_career/base/result_entity.dart';
import 'package:telkom_career/domain/model/request/register/register_request.dart';
import 'package:telkom_career/domain/repository/register/register_repository.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  final RegisterRepository repository;
  RegisterCubit(
    this.repository,
  ) : super(RegisterInitial());

  Future<void> userRegister(RegisterRequest request) async {
    emit(RegisterIsLoading());
    final response = await repository.userRegister(request);
    if (response is ResultSuccess) {
      if (response.data == null) ;

      emit(RegisterIsSuccess(data: (response).data));
    } else if (response is ResultError) {
      emit(RegisterIsFailed(message: response.message));
    }
  }
}
