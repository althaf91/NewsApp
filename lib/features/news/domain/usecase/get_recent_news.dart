
import 'package:news_app/features/news/domain/entity/news_entity.dart';
import 'package:news_app/features/news/domain/repository/news_repository.dart';

class GetRecentNewsUseCase {
  final NewsRepository newsRepository;
  GetRecentNewsUseCase(this.newsRepository);

  Future<List<NewsEntity>> call() async{
   return await newsRepository.getRecentNews();
  }

  Future<List<NewsEntity>> callByCategory(String category) async{
    return await newsRepository.getCategoryNews(category);
  }
}