import 'dart:io';
import 'package:dio_cache_interceptor_hive_store/dio_cache_interceptor_hive_store.dart';
import 'package:hive/hive.dart';
import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';
import 'package:path_provider/path_provider.dart';

import '../../features/news/domain/entity/category_entity.dart';

Future<Directory> getTempDirectory() async {
  final tempDir = await getTemporaryDirectory();
  return await Directory('${tempDir.path}/cache').create(recursive: true);
}

Future<CacheOptions> getCacheOptions() async {
  final cacheDir = await getTempDirectory();
  final cacheStore = HiveCacheStore(cacheDir.path);
  Hive.init(cacheDir.path);
  await Hive.openBox('httpCache');
  final options = CacheOptions(
    store: cacheStore,
    policy: CachePolicy.forceCache,
    hitCacheOnErrorExcept: [401, 403,404],
    maxStale: const Duration(days: 7),
    priority: CachePriority.normal,
    cipher: null,
    keyBuilder: CacheOptions.defaultCacheKeyBuilder,
    allowPostMethod: false,
  );
  return options;
}

List<CategoryEntity> getCategories(){

  List<CategoryEntity> myCategories = [];
  CategoryEntity categoryEntity;

  //1
  categoryEntity = CategoryEntity();
  categoryEntity.categoryName = "Business";
  categoryEntity.imageAssetUrl = "https://images.unsplash.com/photo-1507679799987-c73779587ccf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1502&q=80";
  myCategories.add(categoryEntity);

  //2
  categoryEntity = CategoryEntity();
  categoryEntity.categoryName = "Entertainment";
  categoryEntity.imageAssetUrl = "https://images.unsplash.com/photo-1522869635100-9f4c5e86aa37?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80";
  myCategories.add(categoryEntity);

  //3
  categoryEntity = CategoryEntity();
  categoryEntity.categoryName = "General";
  categoryEntity.imageAssetUrl = "https://images.unsplash.com/photo-1495020689067-958852a7765e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60";
  myCategories.add(categoryEntity);

  //4
  categoryEntity = CategoryEntity();
  categoryEntity.categoryName = "Health";
  categoryEntity.imageAssetUrl = "https://images.unsplash.com/photo-1494390248081-4e521a5940db?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1595&q=80";
  myCategories.add(categoryEntity);

  //5
  categoryEntity = CategoryEntity();
  categoryEntity.categoryName = "Science";
  categoryEntity.imageAssetUrl = "https://images.unsplash.com/photo-1554475901-4538ddfbccc2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1504&q=80";
  myCategories.add(categoryEntity);

  //6
  categoryEntity = CategoryEntity();
  categoryEntity.categoryName = "Sports";
  categoryEntity.imageAssetUrl = "https://images.unsplash.com/photo-1495563923587-bdc4282494d0?ixlib=rb-1.2.1&auto=format&fit=crop&w=1500&q=80";
  myCategories.add(categoryEntity);

  //7
  categoryEntity = CategoryEntity();
  categoryEntity.categoryName = "Technology";
  categoryEntity.imageAssetUrl = "https://images.unsplash.com/photo-1519389950473-47ba0277781c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80";
  myCategories.add(categoryEntity);

  return myCategories;

}