import 'package:bookbase/features/book/presentation/widgets/book_thumbnail_card.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class BookCardShimmerList extends StatelessWidget {
  const BookCardShimmerList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        itemCount: 10,
        separatorBuilder: (context, index) => const Divider(
          color: Colors.transparent,
        ),
        itemBuilder: (context, index) {
          return const BookCardShimmer();
        },
      ),
    );
  }
}

/// This class contains all the code related to Loading Shimmer
///
/// {@template template_name}
/// Details about this method
/// {@endtemplate}
///
/// [param] - Description of parameter
///
/// Returns a [ReturnType] that ....
class BookCardShimmer extends StatelessWidget {
  const BookCardShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade100,
      highlightColor: Colors.grey.shade400,
      child: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              _backgroundCard(context, Colors.amber),
              _mainContent(context),
            ],
          ),
        ],
      ),
    );
  }

  Widget _backgroundCard(BuildContext context, Color cardBackgroundColor) {
    return Card(
      color: cardBackgroundColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.circular(16.0),
      ),
      child: SizedBox(
        height: 160.0,
        width: MediaQuery.of(context).size.width,
      ),
    );
  }

  Widget _mainContent(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 28.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          BookThumbnailCard(coverId: 0),
        ],
      ),
    );
  }
}
