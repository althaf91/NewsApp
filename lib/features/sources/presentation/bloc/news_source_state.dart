part of 'news_source_bloc.dart';

sealed class NewsSourceState extends Equatable {
  @override
  List<Object> get props => [];
}

final class NewsSourceInitialState extends NewsSourceState {}

final class NewsSourceLoadingState extends NewsSourceState {}

final class NewsSourceSuccessState extends NewsSourceState {
  final List<NewsSourceEntity> source;
  NewsSourceSuccessState(this.source);

  @override
  List<Object> get props => [source];
}

final class NewsSourceErrorState extends NewsSourceState {
  final String message;
  NewsSourceErrorState(this.message);

  @override
  List<Object> get props => [message];
}
