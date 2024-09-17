import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:news_app/core/di/service_locator.dart';
import 'package:news_app/features/news/domain/entity/news_entity.dart';
import 'package:news_app/features/news/presentation/screens/bloc/main_news_bloc.dart';
import 'package:news_app/features/news/presentation/screens/main_news_screen/detail_news_screen.dart';
import 'package:news_app/features/news/presentation/screens/main_news_screen/main_news_screen.dart';
import 'package:news_app/features/news/presentation/screens/main_news_screen/news_category_screen.dart';
import 'package:news_app/features/sources/presentation/bloc/news_source_bloc.dart';
import 'package:news_app/features/sources/presentation/source_screen/news_source_screen.dart';

class AppRouter {
  GoRouter generateRoute() {
    return GoRouter(
        routes: [
          GoRoute(path: '/',
              builder: (context,state) {
                return BlocProvider.value(
                    value: serviceLocator<MainNewsBloc>()
                      ..add(MainNewsGetRecentNewsEvent()),
                    child: const MainNewsScreen());
              }
          ),
          GoRoute(path: '/detail',
              builder: (context ,state) {
                final news = state.extra as NewsEntity;
                return DetailNewsScreen(news: news);
              }),
          GoRoute(path: '/news_source',
              builder: (context,state) {
                return const NewsSourceScreen();
              }
          ),
          GoRoute(path: '/category_news',
              builder: (context ,state) {
                final category = state.extra as String;
                return NewsCategoryScreen(category: category);
              }),
        ]
    );
  }
}