import 'package:flutter/material.dart';
import 'package:tienda_app_v2/models/categoria.dart';

class CategoriaItem extends StatelessWidget {
  final Categoria categoria;
  const CategoriaItem({super.key, required this.categoria});

  @override
  Widget build(BuildContext context) {
    //todo: implement build
    return Container(
      width: 76,
      margin: const EdgeInsets.only(right: 12),
      child: Column(
        children: [
          CircleAvatar(
            radius: 28,
            backgroundColor: const Color.fromARGB(255, 217, 50, 21),
            child: Icon(categoria.icono, color: Colors.white, size: 30),
          ),

          Text(
            categoria.nombre,
            style: TextStyle(fontSize: 11),
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
