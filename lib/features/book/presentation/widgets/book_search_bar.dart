import 'package:bookbase/core/theme/pallete.dart';
import 'package:flutter/material.dart';

typedef OnSubmitted = void Function(String);

class BookSearchBar extends StatelessWidget {
  final OnSubmitted onSubmitted;
  final TextEditingController searchController;

  const BookSearchBar({
    super.key,
    required this.onSubmitted,
    required this.searchController,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: TextField(
        onSubmitted: (value) => onSubmitted(value),
        controller: searchController,
        textAlignVertical: TextAlignVertical.center,
        decoration: const InputDecoration(
          alignLabelWithHint: true,
          hint: Text(
            'Search by Book Title (e.g., harry)',
            style: TextStyle(
              fontSize: 18.0,
            ),
          ),
          prefixIcon: Icon(Icons.search),
          fillColor: AppPallete.backgroundColor,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
