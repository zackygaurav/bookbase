import 'package:flutter/material.dart';

/// Displays a [SnackBar] with the given [content].
///
/// This helper method ensures that any currently visible SnackBar
/// is hidden before showing a new one, preventing overlapping UI.
///
/// Example:
/// ```dart
/// showSnackbar(context, 'Book saved successfully!');
/// ```
void showSnackbar(BuildContext context, String content) {
  final messenger = ScaffoldMessenger.of(context);

  messenger
    ..hideCurrentSnackBar()
    ..showSnackBar(
      SnackBar(
        content: Text(content),
      ),
    );
}
