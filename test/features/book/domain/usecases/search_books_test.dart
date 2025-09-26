import 'package:bookbase/features/book/domain/entities/book.dart';
import 'package:bookbase/features/book/domain/repository/book_repository.dart';
import 'package:bookbase/features/book/domain/usecases/search_books.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mocktail/mocktail.dart';

class MockBookRepository extends Mock implements BookRepository {}

void main() {
  late MockBookRepository mockBookRepository;
  late SearchBooks searchBooks;

  setUp(() {
    mockBookRepository = MockBookRepository();
    searchBooks = SearchBooks(bookRepository: mockBookRepository);
  });

  group('Test Usecase - SearchBooks', () {
    test('Call should return a list of books', () async {
      const pageNo = 1;

      final books = [
        const Book(
          id: 1,
          title: 'Harry Potter',
          author: ['J. K. Rowling'],
          thumbnail: ['https://covers.openlibrary.org/a/olid/OL23919A-M.jpg'],
        ),
        const Book(
          id: 2,
          title: 'Lord of the Rings',
          author: ['J. R. R. Tolkien'],
          thumbnail: ['https://covers.openlibrary.org/a/olid/OL23919A-M.jpg'],
        ),
      ];

      when(
        () => mockBookRepository.searchBookByTitle(
          q: 'any',
          limit: 2,
          page: pageNo,
        ),
      ).thenAnswer((_) async => right(books));

      final result = await searchBooks.call(
        SearchBookParams(
          q: 'any',
          limit: 2,
          pageNo: pageNo,
        ),
      );

      result.fold(
        (failure) =>
            fail('Expected success but got failure ${failure.message}'),
        (bookList) => expect(bookList, equals(books)),
      );

      verify(
        () => mockBookRepository.searchBookByTitle(
          q: 'any',
          limit: 2,
          page: pageNo,
        ),
      ).called(1);
      
      verifyNoMoreInteractions(mockBookRepository);
    });
  });
}
