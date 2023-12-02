import 'package:flutter/material.dart';

class Styles {
  static ThemeData themeData({
    required BuildContext context,
    required String fontFamily,
  }) {
    return ThemeData(
      fontFamily: fontFamily,
      useMaterial3: true,
      scaffoldBackgroundColor: const Color(0xffffffff),
      // appBarTheme: const AppBarTheme(
      //   surfaceTintColor: Colors.white,
      //   foregroundColor: Colors.white,
      //   backgroundColor: Colors.white,
      // ),
      // inputDecorationTheme: InputDecorationTheme(
      //   filled: true,
      //   fillColor: Colors.grey.shade200,
      //   contentPadding: const EdgeInsets.all(10),
      //   enabledBorder: OutlineInputBorder(
      //     borderSide: BorderSide(color: Colors.grey.shade300),
      //     borderRadius: BorderRadius.circular(8),
      //   ),
      //   focusedBorder: OutlineInputBorder(
      //     borderSide: BorderSide(color: Colors.grey.shade300),
      //     borderRadius: BorderRadius.circular(8),
      //   ),
      //   errorBorder: OutlineInputBorder(
      //     borderSide: BorderSide(
      //       width: 1,
      //       color: Theme.of(context).colorScheme.error,
      //     ),
      //     borderRadius: BorderRadius.circular(8),
      //   ),
      //   focusedErrorBorder: OutlineInputBorder(
      //     borderSide: BorderSide(
      //       width: 1,
      //       color: Theme.of(context).colorScheme.error,
      //     ),
      //     borderRadius: BorderRadius.circular(8),
      //   ),
      // ),
    );
  }
}
