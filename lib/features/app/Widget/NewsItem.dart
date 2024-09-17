import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../news/domain/entity/news_entity.dart';

Widget getNewsItem(NewsEntity news) {
  final borderRadius = BorderRadius.circular(10);
  return Container(
    clipBehavior: Clip.antiAlias,
    decoration: BoxDecoration(
        borderRadius: borderRadius
    ),
    child: Stack(
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
            height: double.infinity,
            fit: BoxFit.cover,
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
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                stops: const [0,0.4,0.6,1],
                colors: [
                  Colors.transparent,
                  Colors.black.withOpacity(0.0),
                  Colors.black.withOpacity(0.5),
                  Colors.black.withOpacity(0.8),
                ],
                begin: Alignment.topCenter,
                end:Alignment.bottomCenter
            ),
          ),
          padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  if(news.publishAt != null)
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const SizedBox(),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(999)
                          ),
                          child: Text(news.publishAt!.split("T")[0],
                              style: const TextStyle(
                                  color:Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600
                              )),
                        )
                      ],
                    )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    news.title?.trim() ?? '',
                    maxLines: 1,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        color: Colors.grey[100],
                        fontSize:16,
                        fontWeight: FontWeight.w600,
                        overflow: TextOverflow.ellipsis
                    ),
                  ),
                  if(news.description != null)
                    Text(
                      news.description?.trim() ?? '',
                      maxLines: 2,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          color: Colors.grey[400],
                          overflow: TextOverflow.ellipsis
                      ),
                    )

                ],
              )
            ],
          ),

        )
      ],
    ),
  );
}