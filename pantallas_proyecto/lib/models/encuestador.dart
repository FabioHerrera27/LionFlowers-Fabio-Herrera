/// Datos de acceso que se podrán enviar al servicio de autenticación.
class Encuestador {
  const Encuestador({required this.id});

  final String id;

  static String? validarId(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Ingresa tu ID de encuestador.';
    }
    return null;
  }
}
