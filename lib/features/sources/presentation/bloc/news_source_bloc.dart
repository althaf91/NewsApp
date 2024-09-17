import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:news_app/features/sources/domain/entity/news_source_entity.dart';
import 'package:news_app/features/sources/domain/usecase/get_news_source.dart';

import '../../../../core/di/service_locator.dart';

part 'news_source_event.dart';
part 'news_source_state.dart';

class NewsSourceBloc extends Bloc<NewsSourceEvent, NewsSourceState> {
  NewsSourceBloc() : super(NewsSourceInitialState()) {
    FutureOr<void> getNewsSourceEvent(NewsSourceEvent event,Emitter<NewsSourceState> emit) async {
      // TODO: implement event handler
      try {
        emit(NewsSourceLoadingState());
        List<NewsSourceEntity> sources = await serviceLocator<GetNewsSourceUseCase>().call();
        emit(NewsSourceSuccessState(sources));
      } catch (e) {
        emit(NewsSourceErrorState("Something wrong"));
      }
    }
    on<NewsSourceEvent>(getNewsSourceEvent);
  }
}
