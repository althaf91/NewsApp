import 'package:dio/dio.dart';
import 'package:news_app/features/news/domain/entity/news_entity.dart';

class NewsRemoteDataSource {
  final Dio dio;
  final String apiKey;

  NewsRemoteDataSource(this.dio, this.apiKey);

  Future<List<NewsEntity>> getRecentNews() async{
      final res = await dio.get('/v2/everything?q=india&sortBy=publishedAt&apiKey=$apiKey');
      return List<Map<String,dynamic>>.from(res.data['articles'])
          .map((e) => NewsEntity.fromJson(e))
          .toList();
  }

  Future<List<NewsEntity>> getCategoryNews(String category) async{
    final res = await dio.get('/v2/everything?q=$category&apiKey=$apiKey');
    return List<Map<String,dynamic>>.from(res.data['articles'])
        .map((e) => NewsEntity.fromJson(e))
        .toList();
  }
}