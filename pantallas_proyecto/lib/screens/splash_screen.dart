import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../widgets/loading_dots.dart';
import 'login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late final Timer _timer;

  @override
  void initState() {
    super.initState();
    _timer = Timer(const Duration(seconds: 3), () {
      if (!mounted) return;
      Navigator.of(context).pushReplacement(
        PageRouteBuilder<void>(
          pageBuilder: (context, animation, secondaryAnimation) =>
              const LoginScreen(),
          transitionDuration: const Duration(milliseconds: 450),
          transitionsBuilder: (context, animation, secondaryAnimation, child) =>
              FadeTransition(opacity: animation, child: child),
        ),
      );
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => AnnotatedRegion<SystemUiOverlayStyle>(
    value: SystemUiOverlayStyle.light.copyWith(
      statusBarColor: Colors.transparent,
      systemNavigationBarColor: const Color(0xFFDF4310),
    ),
    child: Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
            colors: [Color(0xFFF16B0B), Color(0xFFD72C13), Color(0xFFBC071C)],
            stops: [0, 0.5, 1],
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              const Spacer(flex: 24),
              const Icon(
                Icons.school_rounded,
                size: 158,
                color: Colors.white,
                semanticLabel: 'Educación',
              ),
              const Spacer(flex: 20),
              const Text(
                'Red Anáhuac',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.w900,
                  height: 1.2,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'JUVENTUD Y FAMILIA MISIONERA\nCONEVAL',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                  height: 1.25,
                ),
              ),
              const Spacer(flex: 20),
              const LoadingDots(),
              const SizedBox(height: 16),
              const Text(
                'Inicializando ...',
                style: TextStyle(color: Colors.white, fontSize: 11),
              ),
              const SizedBox(height: 32),
            ],
          ),
        ),
      ),
    ),
  );
}
