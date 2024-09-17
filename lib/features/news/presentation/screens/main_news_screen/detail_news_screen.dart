import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:news_app/features/news/domain/entity/news_entity.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailNewsScreen extends StatelessWidget {
  final NewsEntity news;

  const DetailNewsScreen({super.key,  required this.news});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      if(news.imageUrl == null)
                        const Center(
                          child: Text(
                            'No Image',
                            style: TextStyle(
                                color: Colors.white
                            ),
                          ),
                        ),
                      if(news.imageUrl != null)
                        CachedNetworkImage(
                          imageUrl: news.imageUrl!,
                          width: double.infinity,
                          height: 300,
                          fit: BoxFit.fill,
                          placeholder: (context ,url) => const Center(
                            child: CircularProgressIndicator(),
                          ),
                          errorWidget: (context ,url, error) => const Center(
                            child: Text(
                              "No Image",
                              style: TextStyle(
                                  color: Colors.white
                              ),
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                    Text(
                      news.title?.trim() ?? '',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.grey[100],
                          fontSize:20,
                          fontWeight: FontWeight.w600,
                          overflow: TextOverflow.visible,
                      ),
                      softWrap: true
                    ),
                    const SizedBox(height: 10),
                    Text(
                      news.description?.trim() ?? '',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: Colors.grey[400],
                        fontSize: 14,
                      ),

                    ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () { _launchUrl(news.url);},
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.black,
                    textStyle: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold
                    )
                  ),
                  child: const Text('Read Full Story'),
                  
                )
                  ],
            ),
          )),
    );
  }
}


Future<void> _launchUrl(String? url) async {
  final Uri url0 = Uri.parse(url!);
  if (!await launchUrl(url0)) {
    throw Exception('Could not launch $url0');
  }
}