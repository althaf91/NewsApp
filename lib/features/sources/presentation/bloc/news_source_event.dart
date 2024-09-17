part of 'news_source_bloc.dart';

sealed class NewsSourceEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class GetNewsSourceEvent extends NewsSourceEvent {}
