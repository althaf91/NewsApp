import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/features/sources/domain/entity/news_source_entity.dart';
import 'package:news_app/features/sources/presentation/bloc/news_source_bloc.dart';

import '../../../../core/di/service_locator.dart';

class NewsSourceScreen extends StatelessWidget {
  const NewsSourceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child:  BlocProvider.value(
            value: serviceLocator<NewsSourceBloc>()
              ..add(GetNewsSourceEvent()),
            child: BlocConsumer<NewsSourceBloc,NewsSourceState> (
              listener: (context,state) {  },
              builder: (context,state) {
                if(state is NewsSourceLoadingState) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
                if(state is NewsSourceErrorState) {
                  return  Center(
                    child: Text(
                      state.message,
                      textAlign: TextAlign.center,
                    ),
                  );
                }
                if(state is NewsSourceSuccessState) {
                  return ListView(
                    physics: const BouncingScrollPhysics(),
                    children: [
                      GridView.count(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                        childAspectRatio: 20/10,
                        crossAxisCount: 1,
                        crossAxisSpacing: 15,
                        mainAxisSpacing: 20,
                        children: state.source.map((source)=>  SourceCard(source: source,)).toList(),
                      )
                    ],
                  );
                }
                return const SizedBox();
              },
              ),
          )
      ),
    );
  }
}

class SourceCard extends StatelessWidget {
  const SourceCard({
    super.key,
    required this.source,
  });

  final NewsSourceEntity source;

  @override
  Widget build(BuildContext context) {
    return GridTile(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.black38,
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 2,
              spreadRadius: 2,
              blurStyle: BlurStyle.outer
            )
          ]
        ),
        child: Padding(
          padding: const EdgeInsets.only(left:8.0,right: 8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                  source.name!,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                  )
              ),
              Text(
                  source.description!,
                  maxLines: 8,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      overflow: TextOverflow.ellipsis
                  )
              ),
            ],
          ),
        ),
      ),
    );
  }
}
