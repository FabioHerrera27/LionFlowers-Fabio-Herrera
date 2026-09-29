class Producto {
  final int id;
  final String nombre;
  final double precio;
  final String categoria;
  final String imagenUrl;

  const Producto({
    required this.id,
    required this.nombre,
    required this.precio,
    required this.categoria,
    required this.imagenUrl,
  });

  factory Producto.fromJson(Map<String, dynamic> json) {
    return Producto(
      id: json['id'] as int,
      nombre: json['title'] as String,
      precio: (json['price'] as num).toDouble(),
      categoria: json['category'] as String,
      imagenUrl: json['thumbnail'] as String,
    );
  }
}
