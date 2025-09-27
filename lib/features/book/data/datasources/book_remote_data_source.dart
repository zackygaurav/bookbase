import 'package:bookbase/core/errors/exceptions.dart';
import 'package:bookbase/features/book/data/models/book_model.dart';
import 'package:dio/dio.dart';

abstract interface class BookRemoteDataSource {
  Future<List<BookModel>> searchBookByTitle({
    required String q,
    int limit = 10,
    int page = 1,
  });
}

class BookRemoteDataSourceImpl implements BookRemoteDataSource {
  final dio = Dio();

  @override
  Future<List<BookModel>> searchBookByTitle({
    required String q,
    int limit = 10,
    int page = 1,
  }) async {
    try {
      final Response<Map<String, dynamic>> response = await dio.get(
        'https://openlibrary.org/search.json',
        options: Options(
          responseType: ResponseType.json,
          contentType: 'application/json',
        ),
        queryParameters: {
          'q': q,
          'limit': limit,
          'page': page,
        },
      );

      return (response.data?['docs'] as List<dynamic>)
          .map((e) => BookModel.fromJson(e))
          .toList();
    } catch (e) {
      throw ServerException(message: e.toString());
    }
  }
}
