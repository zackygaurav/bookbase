import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class BookThumbnailCard extends StatelessWidget {
  final int? coverId;
  final double width;
  final double height;

  // Constructor
  const BookThumbnailCard({
    super.key,
    required this.coverId,
    this.width = 120.0,
    this.height = 200.0,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.zero,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16.0),
        child: CachedNetworkImage(
          imageUrl: 'https://covers.openlibrary.org/b/id/${coverId ?? 0}-M.jpg',
          width: width,
          height: height,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
