import 'package:bookbase/core/common/widgets/loader.dart';
import 'package:bookbase/core/theme/pallete.dart';
import 'package:bookbase/features/book/domain/entities/book.dart';
import 'package:bookbase/features/book/presentation/widgets/book_card.dart';
import 'package:flutter/material.dart';

class BookCardList extends StatelessWidget {
  final List<Book> books;
  final ScrollController scrollController;
  final bool isLoadingMore;

  // Constructor
  const BookCardList({
    super.key,
    required this.books,
    required this.scrollController,
    required this.isLoadingMore,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
      physics: const AlwaysScrollableScrollPhysics(),
      itemCount: isLoadingMore ? books.length + 1 : books.length,
      controller: scrollController,
      separatorBuilder: (context, index) => const Divider(
        color: Colors.transparent,
      ),
      itemBuilder: (context, index) {
        if (index < books.length) {
          final book = books[index];
          return BookCard(
            book: book,
            cardBackgroundColor: index % 2 == 0
                ? AppPallete.cardBackgroundColor1
                : AppPallete.cardBackgroundColor2,
          );
        } else {
          return const Padding(
            padding: EdgeInsets.all(16),
            child: Center(
              child: Loader(
                animationPath: 'assets/animations/page_loading.json',
              ),
            ),
          );
        }
      },
    );
  }
}
