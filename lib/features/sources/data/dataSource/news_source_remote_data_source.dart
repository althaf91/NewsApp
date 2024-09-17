import 'package:dio/dio.dart';
import 'package:news_app/features/sources/domain/entity/news_source_entity.dart';

class NewsSourceRemoteDataSource {
  final Dio dio;
  final String apiKey;

  NewsSourceRemoteDataSource(this.dio,this.apiKey);

  Future<List<NewsSourceEntity>> getNewsSourceEntity() async {
    final res = await dio.get(
        'https://newsapi.org/v2/top-headlines/sources?contry=india&apiKey=$apiKey');
   return List<Map<String,dynamic>>.from(res.data['sources'])
   .map((e) => NewsSourceEntity.fromJson(e))
   .toList();
  }
}