import 'package:flutter/material.dart';
import 'package:tienda_app_v2/screens/favoritos_screen.dart';
import 'package:tienda_app_v2/screens/home_screen.dart' show HomeScreen;
import 'package:tienda_app_v2/screens/perfil_screen.dart';
import 'package:tienda_app_v2/screens/guia_screen.dart'; // Solo una vez

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _indiceActual = 0;

  final List<Widget> _pantallas = const [
    HomeScreen(),
    FavoritosScreen(),
    PerfilScreen(),
    GuiaScreen(),
  ];

  void _cambiarPantalla(int indice) {
    setState(() {
      _indiceActual = indice; // Fabio Herrera
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: _indiceActual, children: _pantallas),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _indiceActual,
        onTap: _cambiarPantalla,
        type: BottomNavigationBarType
            .fixed, // Evita que se rompa el diseño con 4 ítems
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Inicio'),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favoritos',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Perfil'),
          BottomNavigationBarItem(icon: Icon(Icons.description), label: 'Guia'),
        ],
      ),
    );
  }
}
