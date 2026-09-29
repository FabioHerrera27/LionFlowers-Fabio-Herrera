import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:tienda_app_v2/models/producto.dart';

class ProductService {
  static const String baseUrl = 'https://dummyjson.com/products';

  Future<List<Producto>> obtenerProductos() async {
    final respuesta = await http.get(Uri.parse(baseUrl));

    if (respuesta.statusCode != 200) {
      throw Exception('Error al obtener los productos');
    }

    final datos = jsonDecode(respuesta.body) as Map<String, dynamic>;
    final productos = datos['products'] as List<dynamic>;

    return productos
        .map((json) => Producto.fromJson(json as Map<String, dynamic>))
        .toList();
  }
}
