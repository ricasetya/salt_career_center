// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'update_photo_cubit.dart';

abstract class UpdatePhotoState extends Equatable {
  const UpdatePhotoState();

  @override
  List<Object> get props => [];
}

class UpdatePhotoInitial extends UpdatePhotoState {}

class UpdatePhotoIsLoading extends UpdatePhotoState {}

class UpdatePhotoIsSucces extends UpdatePhotoState {
  String? message;
  UpdatePhotoIsSucces({
    this.message,
  });
}

class UpdatePhotoIsError extends UpdatePhotoState {
  String? message;
  UpdatePhotoIsError({
    this.message,
  });
}
