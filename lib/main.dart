import 'package:bookbase/core/di/init_dependencies.dart';
import 'package:bookbase/core/theme/theme.dart';
import 'package:bookbase/features/book/presentation/bloc/book_bloc.dart';
import 'package:bookbase/features/book/presentation/pages/books_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// Entry point of the BookBase application.
///
/// Ensures Flutter binding is initialized, sets up dependencies,
/// and launches the root widget.
void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize dependency injection (service locator).
  await initDependencies();

  runApp(const BookBaseApp());
}

/// Root widget of the BookBase application.
///
/// Provides global Bloc providers, theme configuration,
/// and defines the initial route.
class BookBaseApp extends StatelessWidget {
  const BookBaseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        // Provide [BookBloc] to the widget tree.
        BlocProvider(create: (_) => serviceLocator<BookBloc>()),
      ],
      child: MaterialApp(
        title: 'BookBase',
        theme: AppTheme.lightModeTheme,
        home: const BooksPage(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
