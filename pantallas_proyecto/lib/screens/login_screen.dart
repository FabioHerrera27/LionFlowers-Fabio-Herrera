import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../models/encuestador.dart';
import '../theme/app_theme.dart';
import '../widgets/login_form_card.dart';
import '../widgets/login_header.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  void _onSubmit(BuildContext context, Encuestador encuestador) {
    // Conectar aquí el servicio de autenticación cuando esté disponible.
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          content: Text(
            'ID ${encuestador.id} capturado. La autenticación aún no está disponible.',
          ),
        ),
      );
  }

  @override
  Widget build(BuildContext context) => AnnotatedRegion<SystemUiOverlayStyle>(
    value: SystemUiOverlayStyle.dark.copyWith(
      statusBarColor: Colors.transparent,
      systemNavigationBarColor: AppTheme.background,
    ),
    child: Scaffold(
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            final height = math.max(constraints.maxHeight, 700.0);
            return SingleChildScrollView(
              keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
              child: ConstrainedBox(
                constraints: BoxConstraints(minHeight: constraints.maxHeight),
                child: Center(
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: 430),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        children: [
                          SizedBox(height: height * 0.17),
                          const LoginHeader(),
                          SizedBox(height: height * 0.135),
                          LoginFormCard(
                            onSubmit: (value) => _onSubmit(context, value),
                          ),
                          SizedBox(height: height * 0.115),
                          const Text(
                            'v2.4.1 (Compilación 102)',
                            style: TextStyle(
                              color: Color(0xFFA29793),
                              fontSize: 10,
                            ),
                          ),
                          const SizedBox(height: 20),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    ),
  );
}
