import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:news_app/core/di/service_locator.dart';
import '../../../../app/Widget/NewsItem.dart';
import '../bloc/main_news_bloc.dart';

class NewsCategoryScreen extends StatelessWidget {
  final String category;
  const NewsCategoryScreen({super.key,required this.category});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.white),// Remove shadow
        title: const Text(''),
        actions: [
          IconButton(
            icon: const Icon(Icons.home),
            onPressed: () {
              context.go('/');
            },
          ),
        ],
      ),
      body: SafeArea(
          child: BlocProvider.value(
              value: serviceLocator<MainNewsBloc>()
                ..add(MainNewsGetCategoryNewsEvent(category)),
              child: BlocConsumer<MainNewsBloc,MainNewsState>(
                      listener: (context,state) {},
                      builder: (context,state) {
                        if(state is MainNewsLoadingState) {
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        }
                        if(state is MainNewsErrorState) {
                          return  Center(
                            child: Text(
                              state.message,
                              textAlign: TextAlign.center,
                            ),
                          );
                        }
                        if(state is MainNewsGetRecentNewsSuccessState) {
                          return ListView(
                            physics: const BouncingScrollPhysics(),
                            children: [
                              GridView.count(
                                physics: const NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                                childAspectRatio: 21/10,
                                crossAxisCount: 1,
                                crossAxisSpacing: 10,
                                mainAxisSpacing: 10,
                                children: state.news.map((news)=>  GestureDetector(
                                  onTap: () => {
                                    context.push('/detail',extra: news)},
                                   child: getNewsItem(news),
                                )).toList(),
                              )
                            ],
                          );
                        }
                        return const SizedBox();
                      },
                    )
          )
      ),
    );
  }
}
