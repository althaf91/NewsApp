import 'package:news_app/features/sources/domain/entity/news_source_entity.dart';
import 'package:news_app/features/sources/domain/repository/news_source_repository.dart';

class GetNewsSourceUseCase {
  NewsSourceRepository newsSourceRepository;
  GetNewsSourceUseCase(this.newsSourceRepository);

  Future<List<NewsSourceEntity>> call() async {
   return await newsSourceRepository.getNewsSource();
  }
}