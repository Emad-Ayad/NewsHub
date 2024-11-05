import 'package:dio/dio.dart';
import 'package:news/model/articleModel.dart';

class NewsService {
  final dio = Dio();

  Future<List<ArticleModel>> getNews({required String category}) async {
    try {
      Response response = await dio.get(
          "https://newsapi.org/v2/top-headlines?apiKey=c4d325e31c984f8a87492bf6709bf643&category=$category");

      Map<String, dynamic> jsonData = response.data;

      List<dynamic> articles = jsonData['articles'];

      List<ArticleModel> articlesList = [];

      for (var article in articles) {
        ArticleModel articleModel = ArticleModel.fromJson(article);
        articlesList.add(articleModel);
      }
      return articlesList;
    } catch (e) {
      return [];
    }
  }
}
