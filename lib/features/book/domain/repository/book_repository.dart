import 'package:bookbase/core/errors/failure.dart';
import 'package:bookbase/features/book/domain/entities/book.dart';
import 'package:fpdart/fpdart.dart';

abstract interface class BookRepository {
  /// This abstract method will help fetch the Books by title
  ///
  /// [q] - Query requested by User
  /// [limit] - Number of results per query
  /// [page] - Page number for pagination. Starts with 1. Defaults to 1.
  ///
  /// Returns a [Future] that has [Either] value of [Failure] for errors and
  /// [Book] list for success
  Future<Either<Failure, List<Book>>> searchBookByTitle({
    required String q,
    int limit = 10,
    int page = 1,
  });
}
