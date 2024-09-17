part of 'main_news_bloc.dart';

sealed class MainNewsEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class MainNewsGetRecentNewsEvent extends MainNewsEvent {}

class MainNewsGetCategoryNewsEvent extends MainNewsEvent {
  final String category;
  MainNewsGetCategoryNewsEvent(this.category);

  @override
  List<Object> get props => [category];
}
