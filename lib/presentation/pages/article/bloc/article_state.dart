part of 'article_bloc.dart';

abstract class ArticleState extends Equatable {
  const ArticleState();

  @override
  List<Object> get props => [];
}

class ArticleInitState extends ArticleState {}

class ArticleLoading extends ArticleState {}

class ArticleEmpty extends ArticleState {}

class ArticleLoaded extends ArticleState {
  final List<ArticleData> articles;
  ArticleLoaded(this.articles);
}

class ArticleError extends ArticleState {
  final String? error;
  ArticleError({this.error});
}
