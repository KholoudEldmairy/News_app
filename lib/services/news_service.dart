import 'package:dio/dio.dart';
import 'package:news_app/models/article_model.dart';

class NewsService {
  final Dio dio;

  NewsService({required this.dio});

  Future<List<articleModel>> getGeneralNews({required String category}) async {
    try {
      final response = await dio.get(
          'https://newsdata.io/api/1/latest?apikey=pub_f35bc73ac7d8447ea5343b3e8b4ca427&country=eg&language=ar&category=$category&removeduplicate=1');

      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData["results"];

      List<articleModel> articlesList = [];

      for (var article in articles) {
        articleModel model = articleModel(
          url:article["link"],
          image: article["image_url"],
          descreption: article["description"],
          title: article["title"]
        );
        articlesList.add(model);
      }

      return articlesList;
    } catch (e) {
      return [];
    }
  }
}
