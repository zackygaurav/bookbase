import 'package:bookbase/features/book/domain/entities/book.dart';
import 'package:bookbase/features/book/presentation/pages/book_details_page.dart';
import 'package:bookbase/features/book/presentation/widgets/book_thumbnail_small_card.dart';
import 'package:flutter/material.dart';

class BookCard extends StatelessWidget {
  final Book book;
  final Color cardBackgroundColor;

  const BookCard({
    super.key,
    required this.book,
    required this.cardBackgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => BookDetailsPage(book: book),
            fullscreenDialog: true,
          ),
        );
      },
      child: Stack(
        alignment: Alignment.center,
        children: [
          _backgroundCard(context, cardBackgroundColor),
          Padding(
            padding: const EdgeInsets.only(left: 28.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                BookThumbnailSmallCard(coverId: book.id),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          book.title,
                          textAlign: TextAlign.start,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 3,
                          style: const TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(height: 4.0),
                        Text(
                          book.author.first,
                          textAlign: TextAlign.start,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 3,
                          style: const TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black54,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
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
