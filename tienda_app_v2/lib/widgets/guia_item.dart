import 'package:flutter/material.dart';

// 1. TU NUEVO DISEÑO DE GUIA ITEM
class GuiaItem extends StatelessWidget {
  final String titulo;
  final String descripcion;
  final String codigo;
  final Widget? demo;

  const GuiaItem({
    super.key,
    required this.titulo,
    required this.descripcion,
    required this.codigo,
    this.demo,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        bottom: 24,
      ), // Agregué este margen para que no se peguen entre sí
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            titulo,
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 4),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(14),
            decoration: BoxDecoration(
              color: Colors.blueGrey,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: DefaultSelectionStyle.defaultColor),
            ),
            child: Center(child: demo),
          ),
          const SizedBox(height: 8),
          Text(
            descripcion,
            style: const TextStyle(
              fontSize: 11,
              color: Color.fromARGB(255, 236, 119, 162),
            ),
          ),
          const SizedBox(height: 8),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.pink,
              borderRadius: BorderRadius.circular(6),
            ),
            child: Text(
              codigo,
              style: const TextStyle(
                color: Colors.black,
                fontFamily: 'monospace',
                fontSize: 10,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
