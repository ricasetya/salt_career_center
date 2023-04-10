import 'package:bloc/bloc.dart';
import 'package:http/http.dart';
import 'package:equatable/equatable.dart';
import 'package:telkom_career/base/result_entity.dart';
import 'package:telkom_career/data/utilities/commons.dart';
import 'package:telkom_career/domain/model/data/logins/logins_user_data.dart';
import 'package:telkom_career/domain/repository/logins/logins_repository.dart';
import 'package:telkom_career/data/repository/logins_repository/logins_repository_impl.dart';

part 'logins_event.dart';
part 'logins_state.dart';

class LoginsBloc extends Bloc<LoginsEvent, LoginsState> {
  final LoginsRepository repository;
  LoginsBloc(this.repository) : super(LoginsInitial()) {
    on<UserLoginsEvent>((event, emit) async {
      emit(LoginsIsLoading());
      final response = await repository.userLogins(event.userName, event.pass);
      if (response is ResultSuccess) {
        emit(
          LoginsSuccess(data: (response as ResultSuccess).data),
        );
        final data = (state as LoginsSuccess).data;
        Commons().setUid(data.token!);
      } else {
        emit(LoginsIsFailed(message: (response as ResultError).message));
      }
    });
  }
}
