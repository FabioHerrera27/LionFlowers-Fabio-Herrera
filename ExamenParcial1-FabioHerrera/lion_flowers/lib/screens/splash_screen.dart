import 'dart:async';
import 'package:flutter/material.dart';
import 'package:lion_flowers/screens/main_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(milliseconds: 2500), () {
      if (!mounted) return;
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => const MainScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF4F7),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.local_florist,
              size: 80,
              color: Color.fromARGB(255, 206, 41, 170),
            ),
            const SizedBox(height: 20),
            Text(
              'Lion Flowers',
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    color: const Color.fromARGB(255, 238, 89, 124),
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(height: 24),
            const CircularProgressIndicator(
              color: Color.fromARGB(195, 223, 49, 78),
            ),
          ],
        ),
      ),
    );
  }
}
