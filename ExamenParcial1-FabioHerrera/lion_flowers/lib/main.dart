import 'package:flutter/material.dart';
import 'package:lion_flowers/screens/splash_screen.dart';
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lion Flowrers',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(
        
      ),
    );
  }
}
void main() {
  runApp(const MyApp());
}