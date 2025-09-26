import 'package:bookbase/features/book/data/datasources/book_remote_data_source.dart';
import 'package:bookbase/features/book/data/repositories/book_repository_impl.dart';
import 'package:bookbase/features/book/domain/repository/book_repository.dart';
import 'package:bookbase/features/book/domain/usecases/search_books.dart';
import 'package:bookbase/features/book/presentation/bloc/book_bloc.dart';
import 'package:get_it/get_it.dart';

final serviceLocator = GetIt.instance;

Future<void> initDependencies() async {
  // Data Source
  serviceLocator
    ..registerFactory<BookRemoteDataSource>(
      () => BookRemoteDataSourceImpl(),
    )
    // Repository
    ..registerFactory<BookRepository>(
      () => BookRepositoryImpl(
        bookRemoteDataSource: serviceLocator(),
      ),
    )
    // Usecases
    ..registerFactory<SearchBooks>(
      () => SearchBooks(
        bookRepository: serviceLocator(),
      ),
    )
    ..registerLazySingleton<BookBloc>(
      () => BookBloc(
        searchBooks: serviceLocator(),
      ),
    );
}
