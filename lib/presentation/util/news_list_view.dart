import 'package:flutter/material.dart';
import 'package:news/model/articleModel.dart';
import 'package:news/presentation/util/news_tile.dart';

class NewsListView extends StatelessWidget {
  NewsListView({super.key, required this.articles});

  List<ArticleModel> articles;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: articles.length,
        (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: NewsTile(
              articleModel: articles[index],
            ),
          );
        },
      ),
    );
  }
}
