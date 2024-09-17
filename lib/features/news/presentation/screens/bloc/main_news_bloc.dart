import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:news_app/core/di/service_locator.dart';
import 'package:news_app/features/news/domain/entity/news_entity.dart';
import 'package:news_app/features/news/domain/usecase/get_recent_news.dart';

part 'main_news_event.dart';
part 'main_news_state.dart';

class MainNewsBloc extends Bloc<MainNewsEvent, MainNewsState> {
  MainNewsBloc() : super(MainNewsInitialState()) {
    FutureOr<void> mainNewsGetRecentNewsEvent(MainNewsGetRecentNewsEvent event,Emitter<MainNewsState> emit) async {
      try {
        emit(MainNewsLoadingState());
        List<NewsEntity> news = await serviceLocator<GetRecentNewsUseCase>().call();
        emit(MainNewsGetRecentNewsSuccessState(news));
      } catch (e) {
        emit(MainNewsErrorState("Something wrong"));
      }
    }

    FutureOr<void> mainNewsGetCategoryNewsEvent(MainNewsGetCategoryNewsEvent event,Emitter<MainNewsState> emit) async {
      try {
        emit(MainNewsLoadingState());
        List<NewsEntity> news = await serviceLocator<GetRecentNewsUseCase>().callByCategory(event.category);
        emit(MainNewsGetRecentNewsSuccessState(news));
      } catch (e) {
        emit(MainNewsErrorState("Something wrong"));
      }
    }

    on<MainNewsGetRecentNewsEvent>(mainNewsGetRecentNewsEvent);
    on<MainNewsGetCategoryNewsEvent>(mainNewsGetCategoryNewsEvent);
  }
}
