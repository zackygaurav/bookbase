// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:fpdart/fpdart.dart';

import 'package:bookbase/core/errors/failure.dart';
import 'package:bookbase/features/book/domain/entities/book.dart';
import 'package:bookbase/features/book/domain/repository/book_repository.dart';
import 'package:bookbase/features/book/domain/usecases/usecase.dart';

class SearchBooks implements Usecase<List<Book>, SearchBookParams> {
  BookRepository bookRepository;

  // Constructor
  SearchBooks({required this.bookRepository});

  /// This method will help fetch the Books by title which is overridden
  /// from the BookRepository interface
  ///
  /// [q] - Query requested by User
  /// [limit] - Number of results per query
  /// [page] - Page number for pagination. Starts with 1. Defaults to 1.
  ///
  /// Returns a [Future] that has [Either] value of [Failure] for errors and
  /// [Book] list for success
  @override
  Future<Either<Failure, List<Book>>> call(SearchBookParams params) async {
    return await bookRepository.searchBookByTitle(
      q: params.q,
      limit: params.limit,
      page: params.pageNo,
    );
  }
}

class SearchBookParams {
  final String q;
  final int limit;
  final int pageNo;

  SearchBookParams({
    required this.q,
    required this.limit,
    required this.pageNo,
  });
}
