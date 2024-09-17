import 'package:news_app/core/network/network_client.dart';
import 'package:news_app/features/news/data/dataSource/news_remote_data_source.dart';
import 'package:news_app/features/sources/data/dataSource/news_source_remote_data_source.dart';
import 'package:news_app/features/sources/domain/entity/news_source_entity.dart';
import 'package:news_app/features/sources/domain/repository/news_source_repository.dart';

class NewsSourceRepositoryImpl implements NewsSourceRepository {
  NewsSourceRemoteDataSource dataSource;
  String apiKey;
  NewsSourceRepositoryImpl(this.dataSource,this.apiKey);

  @override
  Future<List<NewsSourceEntity>> getNewsSource() async {
    return await dataSource.getNewsSourceEntity();
  }
}