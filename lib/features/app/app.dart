import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/features/app/routes/routes.dart';
import 'package:news_app/features/app/themes.dart';
import 'package:news_app/features/news/presentation/screens/bloc/main_news_bloc.dart';
import 'package:news_app/features/sources/presentation/bloc/news_source_bloc.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(create: (_) => MainNewsBloc()),
          BlocProvider(create: (_) => NewsSourceBloc()),
        ],
        child: MaterialApp.router(
          debugShowCheckedModeBanner: false,
          theme: AppThemes.themeData,
          routerConfig: AppRouter().generateRoute(),
        )
    );
  }
}
