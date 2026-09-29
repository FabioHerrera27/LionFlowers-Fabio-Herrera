import 'package:flutter/material.dart';

// CODIGO FABIO HERRERA
void main() {
  runApp(const TiendaApp());
}

class TiendaApp extends StatelessWidget {
  const TiendaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tienda App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: const HomeScreen(),
    );
  }
}

class Categoria {
  final String nombre;
  final IconData icono;

  const Categoria(this.nombre, this.icono);
}

class Producto {
  final String nombre;
  final double precio;
  final IconData icono;
  const Producto(this.nombre, this.precio, this.icono);
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  // CREANDO LOS OBJETOS DE CATEGORIAS DE LA TIENDA
  final List<Categoria> categorias = const [
    Categoria('Electronica', Icons.electrical_services),
    Categoria('Ropa', Icons.checkroom),
    Categoria('Hogar', Icons.home),
    Categoria('Juguetes', Icons.toys),
    Categoria('Deportes', Icons.sports_soccer),
    Categoria('Belleza', Icons.spa),
    Categoria('Libros', Icons.menu_book),
    Categoria('Mascotas', Icons.pets),
    Categoria('Calzado', Icons.hiking),
    Categoria('Accesorios', Icons.watch),
    Categoria('Videojuegos', Icons.sports_esports),
    Categoria('Alimentos', Icons.restaurant),
  ];

  final List<Producto> productos = const [
    Producto('Laptop', 1200.0, Icons.laptop),
    Producto('Camiseta', 25.0, Icons.checkroom),
    Producto('Sofá', 500.0, Icons.weekend),
    Producto('Pelota de fútbol', 30.0, Icons.sports_soccer),
    Producto('Auriculares', 80.0, Icons.headphones),
    Producto('Smartphone', 850.0, Icons.smartphone),
    Producto('Tenis deportivos', 95.0, Icons.hiking),
    Producto('Reloj inteligente', 150.0, Icons.watch),
    Producto('Cafetera', 65.0, Icons.coffee_maker),
    Producto('Mochila', 45.0, Icons.backpack),
    Producto('Cámara', 640.0, Icons.photo_camera),
    Producto('Libro', 20.0, Icons.menu_book),
    Producto('Control de videojuegos', 70.0, Icons.sports_esports),
    Producto('Lámpara', 38.0, Icons.light),
    Producto('Perfume', 90.0, Icons.spa),
    Producto('Bocina Bluetooth', 55.0, Icons.speaker),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tienda App'),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hola Fabio',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Que vamos a comprar hoy?',
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                  ],
                ),
                const CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.blueAccent,
                  child: Icon(Icons.person, color: Colors.white),
                ),
              ],
            ),
            const SizedBox(height: 20),
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 140,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Colors.deepPurple, Colors.purpleAccent],
                      ),
                    ),
                  ),
                  const Positioned(
                    left: 20,
                    top: 24,
                    right: 20,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hasta 30% de descuento',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 6),
                        Text(
                          'En productos seleccionados de esta semana',
                          style: TextStyle(color: Colors.white, fontSize: 13),
                        ),
                      ],
                    ),
                  ),
                  const Positioned(
                    right: 16,
                    bottom: 16,
                    child: Icon(
                      Icons.local_offer,
                      color: Colors.white,
                      size: 40,
                    ),
                  ),
                ],
              ),
            ),
            const Text(
              'Categorias',
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            SizedBox(
              height: 90,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categorias.length,
                itemBuilder: (context, index) {
                  final categoria = categorias[index];
                  return Container(
                    width: 76,
                    margin: const EdgeInsets.only(right: 12),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 28,
                          backgroundColor: Colors.deepPurpleAccent,
                          child: Icon(
                            categoria.icono,
                            color: Colors.white,
                            size: 28,
                          ),
                        ),
                        Text(
                          categoria.nombre,
                          style: const TextStyle(fontSize: 11),
                          textAlign: TextAlign.center,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            const Text(
              'Productos',
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, // FABIO HERRERA
                mainAxisSpacing: 14,
                crossAxisSpacing: 14,
                childAspectRatio: 0.88,
              ),
              itemCount: productos.length,
              itemBuilder: (context, index) {
                final producto = productos[index];
                return Card(
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: double.infinity,
                          height: 80,
                          child: Icon(
                            producto.icono,
                            size: 36,
                            color: Colors.deepPurpleAccent,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          producto.nombre,
                          style: const TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const Spacer(),
                        Text(
                          '\$${producto.precio.toStringAsFixed(0)}',
                          style: const TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: Colors.deepPurpleAccent,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
