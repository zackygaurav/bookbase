import 'package:bookbase/core/di/init_dependencies.dart';
import 'package:bookbase/core/theme/theme.dart';
import 'package:bookbase/features/book/presentation/bloc/book_bloc.dart';
import 'package:bookbase/features/book/presentation/pages/books_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Init Service Locator
  await initDependencies();

  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => serviceLocator<BookBloc>()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BookBase',
      theme: AppTheme.lightModeTheme,
      home: const BooksPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
