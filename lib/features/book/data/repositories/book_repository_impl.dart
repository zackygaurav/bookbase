import 'package:bookbase/core/errors/exceptions.dart';
import 'package:bookbase/core/errors/failure.dart';
import 'package:bookbase/features/book/data/datasources/book_remote_data_source.dart';
import 'package:bookbase/features/book/data/models/book_model.dart';
import 'package:bookbase/features/book/domain/entities/book.dart';
import 'package:bookbase/features/book/domain/repository/book_repository.dart';
import 'package:fpdart/fpdart.dart';

class BookRepositoryImpl implements BookRepository {
  final BookRemoteDataSource bookRemoteDataSource;

  // Constructor
  BookRepositoryImpl({required this.bookRemoteDataSource});

  @override
  Future<Either<Failure, List<Book>>> searchBookByTitle({
    required String q,
    int limit = 10,
    int page = 1,
  }) async {
    try {
      final bookModel = await bookRemoteDataSource.searchBookByTitle(
        q: q,
        limit: limit,
        page: page,
      );

      final books = bookModel.map((model) => model.toEntity()).toList();

      return right(books);
    } on ServerException catch (e) {
      return left(Failure(message: e.message));
    }
  }
}
