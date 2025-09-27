import 'package:bookbase/core/common/widgets/loader.dart';
import 'package:flutter/material.dart';

class EmptyWidget extends StatelessWidget {
  const EmptyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        Loader(
          animationPath: 'assets/animations/empty_search.json',
          height: 200.0,
          width: 200.0,
        ),
        Text(
          'No Books found in\nthe Library :\'(',
          style: TextStyle(fontSize: 24.0),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
