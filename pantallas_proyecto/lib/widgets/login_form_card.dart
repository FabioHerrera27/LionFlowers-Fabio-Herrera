import 'package:flutter/material.dart';

import '../models/encuestador.dart';
import '../theme/app_theme.dart';

class LoginFormCard extends StatefulWidget {
  const LoginFormCard({super.key, required this.onSubmit});

  final ValueChanged<Encuestador> onSubmit;

  @override
  State<LoginFormCard> createState() => _LoginFormCardState();
}

class _LoginFormCardState extends State<LoginFormCard> {
  final _formKey = GlobalKey<FormState>();
  final _idController = TextEditingController();

  void _submit() {
    if (!_formKey.currentState!.validate()) return;
    FocusScope.of(context).unfocus();
    widget.onSubmit(Encuestador(id: _idController.text.trim()));
  }

  @override
  void dispose() {
    _idController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Container(
    padding: const EdgeInsets.all(24),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(20),
      boxShadow: const [
        BoxShadow(
          color: Color(0x08000000),
          blurRadius: 24,
          offset: Offset(0, 10),
        ),
      ],
    ),
    child: Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            'Iniciar Sesión',
            style: TextStyle(
              fontSize: 23,
              fontWeight: FontWeight.w800,
              height: 1.2,
            ),
          ),
          const SizedBox(height: 6),
          const Text(
            'Ingresa tus credenciales de encuestador autorizado.',
            style: TextStyle(color: AppTheme.muted, fontSize: 13, height: 1.3),
          ),
          const SizedBox(height: 24),
          const Text(
            'ID DE ENCUESTADOR',
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700),
          ),
          const SizedBox(height: 8),
          TextFormField(
            controller: _idController,
            validator: Encuestador.validarId,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            textInputAction: TextInputAction.done,
            autocorrect: false,
            enableSuggestions: false,
            onFieldSubmitted: (_) => _submit(),
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            decoration: const InputDecoration(
              hintText: '9582  -  _',
              hintStyle: TextStyle(color: Color(0xFFA29793), fontSize: 18),
              prefixIcon: Icon(
                Icons.person_outline_rounded,
                color: AppTheme.muted,
                size: 22,
              ),
            ),
          ),
          const SizedBox(height: 22),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton.icon(
              onPressed: _submit,
              icon: const Icon(Icons.arrow_forward_rounded, size: 20),
              label: const Text('Ingresar'),
              style: ElevatedButton.styleFrom(
                backgroundColor: AppTheme.red,
                foregroundColor: Colors.white,
                minimumSize: const Size.fromHeight(50),
                elevation: 4,
                shadowColor: AppTheme.red.withValues(alpha: 0.3),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14),
                ),
                textStyle: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          const SizedBox(height: 30),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                Icons.info_outline_rounded,
                size: 16,
                color: AppTheme.orange,
              ),
              SizedBox(width: 8),
              Expanded(
                child: Text(
                  'Contacta a tu coordinador de zona si no tienes ID asignado o si tienes problemas de acceso.',
                  style: TextStyle(
                    color: AppTheme.muted,
                    fontSize: 12,
                    height: 1.45,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
