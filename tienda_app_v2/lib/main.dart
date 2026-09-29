import 'package:flutter/material.dart';
import 'package:tienda_app_v2/screens/splash_screen.dart';

void main() {
  //se define el main del programa y se ejecuta
  runApp(const TiendaApp());
}

class TiendaApp extends StatelessWidget {
  //se define la clase de la aplicacion que extiede de StatelessWidget
  const TiendaApp({super.key}); //se define el constructor de la clase

  @override //se define el build del widget por medio del override (polimorfismo)
  Widget build(BuildContext context) {
    //se define el build del widget
    return MaterialApp(
      title: 'Tienda App v2',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      home: const SplashScreen(),
    );
  }
}
