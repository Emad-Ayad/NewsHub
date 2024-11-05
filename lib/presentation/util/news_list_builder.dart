import 'package:flutter/material.dart';

import '../../model/articleModel.dart';
import '../../services/news_service.dart';
import 'news_list_view.dart';

class NewsListBuilder extends StatefulWidget {
  const NewsListBuilder({super.key, required this.category});

  final String category;

  @override
  State<NewsListBuilder> createState() => _NewsListBuilderState();
}

class _NewsListBuilderState extends State<NewsListBuilder> {
  var future;

  @override
  void initState() {
    super.initState();
    future = NewsService().getNews(category: widget.category);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
      future: future,
      builder: (context, snapShot) {
        if (snapShot.hasData) {
          return NewsListView(articles: snapShot.data!);
        } else if (snapShot.hasError) {
          return SliverToBoxAdapter(
            child: Center(
              child: Text("There is Something Wrong"),
            ),
          );
        } else {
          return SliverToBoxAdapter(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
      },
    );
  }
}
