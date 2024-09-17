
import 'package:news_app/features/sources/domain/entity/news_source_entity.dart';

abstract class NewsSourceRepository {
  Future<List<NewsSourceEntity>> getNewsSource();
}