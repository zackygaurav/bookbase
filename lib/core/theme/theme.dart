import 'package:bookbase/core/theme/pallete.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// Defines the global application theme settings.
///
/// Provides [ThemeData] configurations for different modes
/// (e.g., light and dark). Fonts are sourced from [GoogleFonts]
/// to maintain consistent typography across platforms.
class AppTheme {
  /// Light mode theme configuration for the app.
  ///
  /// - Background color set to [AppPallete.backgroundColor].
  /// - Text theme uses [GoogleFonts.lato].
  /// - App bar styled with [AppPallete.gradient2] and a custom
  ///   [GoogleFonts.deliusSwashCaps] title.
  /// - Card theme uses a subtle elevation for depth.

  static ThemeData get light {
    /// Light mode theme configuration for the app.
    ///
    /// - Background color set to [AppPallete.backgroundColor].
    /// - Text theme uses [GoogleFonts.lato].
    /// - App bar styled with [AppPallete.gradient2] and a custom
    ///   [GoogleFonts.deliusSwashCaps] title.
    /// - Card theme uses a subtle elevation for depth.
    return ThemeData.light().copyWith(
      scaffoldBackgroundColor: AppPallete.backgroundColor,
      textTheme: GoogleFonts.latoTextTheme(),

      appBarTheme: const AppBarTheme().copyWith(
        backgroundColor: AppPallete.gradient2,
        titleTextStyle: GoogleFonts.deliusSwashCaps(
          fontSize: 24.0,
        ),
      ),

      cardTheme: ThemeData().cardTheme.copyWith(elevation: 1.0),
    );
  }

  /// Placeholder for dark mode theme configuration.
  ///
  /// Currently uses [ThemeData.dark] with default settings,
  /// but can be extended for dark mode support.
  /// 
  /// Currently unused.
  static ThemeData get dark {
    return ThemeData.dark();
  }
}
