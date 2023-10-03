// ignore_for_file: must_be_immutable

part of 'update_portfolio_cubit.dart';

abstract class UpdatePortfolioState extends Equatable {
  const UpdatePortfolioState();

  @override
  List<Object> get props => [];
}

class UpdatePortfolioInitial extends UpdatePortfolioState {}

class UpdatePortfolioIsSuccess extends UpdatePortfolioState {
  String message;
  UpdatePortfolioIsSuccess({
    required this.message,
  });
}

class UpdatePortfolioIsFailed extends UpdatePortfolioState {
  String message;
  UpdatePortfolioIsFailed({
    required this.message,
  });
}

class UpdatePortfolioIsLoading extends UpdatePortfolioState {}
