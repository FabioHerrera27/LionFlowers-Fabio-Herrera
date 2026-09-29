import 'package:flutter/material.dart';

import '../theme/app_theme.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({super.key});

  @override
  Widget build(BuildContext context) => const Column(
    children: [
      Text(
        'JUVENTUD Y FAMILIA MISIONERA\nCONEVAL',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: AppTheme.red,
          fontSize: 15,
          fontWeight: FontWeight.w800,
          height: 1.2,
        ),
      ),
      SizedBox(height: 7),
      Text(
        'Plataforma de Encuestas Nacionales',
        textAlign: TextAlign.center,
        style: TextStyle(color: AppTheme.muted, fontSize: 11),
      ),
    ],
  );
}
