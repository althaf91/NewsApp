import 'package:news_app/features/news/data/dataSource/news_remote_data_source.dart';
import 'package:news_app/features/news/domain/entity/news_entity.dart';
import 'package:news_app/features/news/domain/repository/news_repository.dart';

class NewsRepositoryImpl implements NewsRepository {
  final NewsRemoteDataSource dataSource;
  final String apiKey;

  NewsRepositoryImpl({required this.dataSource, required this.apiKey});

  @override
  Future<List<NewsEntity>> getRecentNews() {
    return dataSource.getRecentNews();
  }

  @override
  Future<List<NewsEntity>> getCategoryNews(String category) {
    return dataSource.getCategoryNews(category);
  }

}