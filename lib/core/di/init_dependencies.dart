import 'package:bookbase/features/book/data/datasources/book_remote_data_source.dart';
import 'package:bookbase/features/book/data/repositories/book_repository_impl.dart';
import 'package:bookbase/features/book/domain/repository/book_repository.dart';
import 'package:bookbase/features/book/domain/usecases/search_books.dart';
import 'package:bookbase/features/book/presentation/bloc/book_bloc.dart';
import 'package:get_it/get_it.dart';

/// Global service locator instance using [GetIt].
///
/// Provides centralized dependency management for data sources,
/// repositories, use cases, and blocs.
final serviceLocator = GetIt.instance;

/// Initializes all feature modules and their dependencies.
///
/// Call this method once at application startup before using
/// any registered services.
Future<void> initDependencies() async {
  _initBookFeature();
}

/// Registers dependencies for the Book feature.
///
/// Wires up the [BookRemoteDataSource], [BookRepository],
/// [SearchBooks] use case, and [BookBloc].
void _initBookFeature() {
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
