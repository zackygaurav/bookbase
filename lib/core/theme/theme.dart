import 'package:bookbase/core/theme/pallete.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static final lightModeTheme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: AppPallete.backgroundColor,
    textTheme: GoogleFonts.latoTextTheme(),
    appBarTheme: const AppBarTheme().copyWith(
      backgroundColor: AppPallete.gradient2,
      titleTextStyle: GoogleFonts.deliusSwashCaps(
        fontSize: 24.0
      ),
    ),
    cardTheme: ThemeData().cardTheme.copyWith(
      elevation: 1.0
    )
  );
}
