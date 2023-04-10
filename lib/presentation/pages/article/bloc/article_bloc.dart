import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:telkom_career/base/result_entity.dart';
import 'package:equatable/equatable.dart';
import 'package:telkom_career/domain/repository/article/article_repository.dart';
import 'package:telkom_career/domain/model/data/article/article_data.dart';

part 'article_event.dart';
part 'article_state.dart';

class ArticleBloc extends Cubit<ArticleState> {
  final ArticleRepository repository;

  ArticleBloc(this.repository) : super(ArticleInitState());
  Future<void> fetchArticle(String country) async {
    print("FETCH ARTICLE");
    emit(ArticleLoading());

    final response = await repository.fetchArticles(country);

    if (response is ResultSuccess) {
      emit(ArticleLoaded((response as ResultSuccess).data));
    } else {
      emit(ArticleError(error: "Error"));
    }
  }
}
