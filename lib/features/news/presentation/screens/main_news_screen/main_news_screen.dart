import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:news_app/core/Utilities/Helper.dart';
import 'package:news_app/core/di/service_locator.dart';
import 'package:news_app/features/app/Widget/NewsItem.dart';
import 'package:news_app/features/news/domain/entity/category_entity.dart';
import 'package:news_app/features/news/domain/entity/news_entity.dart';
import 'package:news_app/features/news/presentation/screens/bloc/main_news_bloc.dart';
import 'package:news_app/features/news/presentation/screens/main_news_screen/news_category_screen.dart';
import 'package:news_app/features/sources/presentation/source_screen/news_source_screen.dart';

class MainNewsScreen extends StatefulWidget {
  const MainNewsScreen({super.key});

  @override
  State<MainNewsScreen> createState() => _MainNewsScreenState();
}

class _MainNewsScreenState extends State<MainNewsScreen> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const RecentNewsScreen(),
    const NewsSourceScreen()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.newspaper), label: "News"),
            BottomNavigationBarItem(icon: Icon(Icons.rss_feed), label: "Source")
          ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
    required this.category,
  });

  final CategoryEntity category;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.go('/category_news',extra: category.categoryName!.toLowerCase());
      },
      child: Container(
        margin: const EdgeInsets.only(right:14),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: CachedNetworkImage(
                imageUrl: category.imageAssetUrl!,
                height: 130,
                width: 120,
                fit: BoxFit.fill,
              ),
            ),
            Container(
              alignment: Alignment.center,
              height: 130,
              width: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.black38
              ),
              child: Text(
                category.categoryName ?? '',
                style: const TextStyle(
                    color:Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold
                )
              ),
            ),
          ]
        ),
      ),
    );
  }
}


class RecentNewsScreen extends StatelessWidget {
  const RecentNewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<CategoryEntity> categories = getCategories();
    return SafeArea(
        child: Column(
            children: [
              const Text(
                'Category',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 130,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: categories.length,
                    itemBuilder: (context, index) {
                      final category = categories[index];
                      return CategoryCard(category: category);
                    }),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Recent News',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                ),
              ),
              Expanded(
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
                                  context.go('/detail',extra: news)},
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
            ]
        )
    );
  }


}
