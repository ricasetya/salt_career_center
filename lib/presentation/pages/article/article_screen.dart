import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:telkom_career/data/repository/article_repository_impl.dart';
import 'package:telkom_career/presentation/pages/article/bloc/article_bloc.dart';

class ArticleScreen extends StatefulWidget {
  const ArticleScreen({super.key});

  @override
  State<StatefulWidget> createState() => _ArticleScreenState();
}

class _ArticleScreenState extends State<ArticleScreen> {
  late ArticleBloc articleCubit;

  @override
  void initState() {
    super.initState();
    articleCubit = ArticleBloc(ArticleRepositoryImpl());
  }

  @override
  void dispose() {
    articleCubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    articleCubit.fetchArticle("id");
    return BlocProvider.value(
      value: articleCubit,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Article"),
        ),
        body: BlocBuilder<ArticleBloc, ArticleState>(
          builder: (context, state) {
            if (state is ArticleEmpty) {
              print("ARTICLE : EMPTY");
              return Container(
                margin: const EdgeInsets.fromLTRB(10, 50, 10, 50),
                child: const Text(
                  "Tidak ada artikel saat ini",
                  style: TextStyle(fontSize: 24),
                ),
              );
            } else if (state is ArticleLoaded) {
              print("ARTICLE : LOADED");
              return ListView.builder(
                itemCount: state.articles.length,
                itemBuilder: (context, index) {
                  final item = state.articles[index];

                  return Card(
                    child: Column(
                      children: [
                        (item.bannerImage != 0
                            ? Image.network(
                                item.bannerImage,
                                fit: BoxFit.cover,
                              )
                            : Image.network(
                                "data:image/jpeg;base64,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",
                                fit: BoxFit.cover,
                              )),
                        // Image.network(
                        //   item.bannerImage,
                        //   fit: BoxFit.cover,
                        // ),

                        Container(
                          margin: const EdgeInsets.only(top: 5),
                          child: Text(
                            item.title,
                            style: const TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 10),
                          child: Text(
                            item.sortDescription,
                            style: const TextStyle(fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              );
            } else if (state is ArticleLoading) {
              print("ARTICLE : LOADING");
              return const Center(
                child: CircularProgressIndicator(
                  color: Color(0xff5A5A5A),
                  backgroundColor: Color.fromARGB(1, 90, 90, 90),
                ),
              );
            } else {
              print("ARTICLE : ELSE");
              return Container(
                margin: const EdgeInsets.fromLTRB(10, 50, 10, 50),
                child: const Text(
                  "Gagal menerima data artikel",
                  style: TextStyle(fontSize: 24),
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
