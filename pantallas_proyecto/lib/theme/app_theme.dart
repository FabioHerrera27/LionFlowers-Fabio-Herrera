import 'package:flutter/material.dart';

abstract final class AppTheme {
  static const red = Color(0xFFCA101B);
  static const orange = Color(0xFFFF5900);
  static const background = Color(0xFFFAF8F5);
  static const ink = Color(0xFF302C2C);
  static const muted = Color(0xFF756D6B);

  static ThemeData get light => ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: background,
    colorScheme: ColorScheme.fromSeed(
      seedColor: red,
      primary: red,
      surface: background,
      onSurface: ink,
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: background,
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: Color(0xFFE7DAD4)),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: red, width: 1.5),
      ),
    ),
  );
}
