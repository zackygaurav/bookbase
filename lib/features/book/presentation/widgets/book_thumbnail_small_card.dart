import 'package:bookbase/core/common/utils/hero_tag_generator.dart';
import 'package:bookbase/core/common/utils/image_url_generator.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class BookThumbnailSmallCard extends StatelessWidget {
  final int? coverId;

  // Constructor
  const BookThumbnailSmallCard({
    super.key,
    required this.coverId,
  });

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: getUniqueHeroTag(coverId: coverId ?? 0),
      child: Card(
        margin: EdgeInsets.zero,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16.0),
          child: CachedNetworkImage(
            imageUrl: generateImageUrl(coverId: coverId ?? 0),
            width: 120.0,
            height: 200.0,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
