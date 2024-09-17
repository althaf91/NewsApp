import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:news_app/core/network/network_client.dart';
import 'package:news_app/core/shared/constant.dart';
import 'package:news_app/features/news/data/dataSource/news_remote_data_source.dart';
import 'package:news_app/features/news/data/repository/news_repository_impl.dart';
import 'package:news_app/features/news/domain/repository/news_repository.dart';
import 'package:news_app/features/news/domain/usecase/get_recent_news.dart';
import 'package:news_app/features/news/presentation/screens/bloc/main_news_bloc.dart';
import 'package:news_app/features/sources/data/dataSource/news_source_remote_data_source.dart';
import 'package:news_app/features/sources/data/repository/news_source_repository_imp.dart';
import 'package:news_app/features/sources/domain/repository/news_source_repository.dart';
import 'package:news_app/features/sources/domain/usecase/get_news_source.dart';
import 'package:news_app/features/sources/presentation/bloc/news_source_bloc.dart';

final serviceLocator = GetIt.instance;

setupServiceLocator() async {
  serviceLocator.registerFactory<Constant>(() => Constant());
  serviceLocator.registerFactory<Dio>(()=> NetworkClient(Dio(), constant: serviceLocator()).dio);

  //News
  serviceLocator.registerFactory<MainNewsBloc>(() => MainNewsBloc());
  serviceLocator.registerLazySingleton<NewsRemoteDataSource>(()=> NewsRemoteDataSource(serviceLocator(), serviceLocator<Constant>().apiKey));
  serviceLocator.registerLazySingleton<NewsRepository>(()=> NewsRepositoryImpl(dataSource: serviceLocator(), apiKey: serviceLocator<Constant>().apiKey));
  serviceLocator.registerLazySingleton<GetRecentNewsUseCase>(()=> GetRecentNewsUseCase(serviceLocator()));

  //News Sources
  serviceLocator.registerFactory<NewsSourceBloc>(() => NewsSourceBloc());
  serviceLocator.registerLazySingleton<NewsSourceRepository>(() => NewsSourceRepositoryImpl(serviceLocator(), serviceLocator<Constant>().apiKey));
  serviceLocator.registerLazySingleton<NewsSourceRemoteDataSource>(() => NewsSourceRemoteDataSource(serviceLocator(), serviceLocator<Constant>().apiKey));
  serviceLocator.registerLazySingleton<GetNewsSourceUseCase>(() => GetNewsSourceUseCase(serviceLocator()));

}