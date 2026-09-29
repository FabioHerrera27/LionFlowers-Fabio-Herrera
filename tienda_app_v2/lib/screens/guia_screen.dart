import 'package:flutter/material.dart';
import 'package:tienda_app_v2/widgets/guia_item.dart';

class GuiaScreen extends StatelessWidget {
  const GuiaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text("Compendio de Widgets"),
        backgroundColor: const Color.fromARGB(255, 248, 179, 202),
      ),
      body: ListView(
        padding: const EdgeInsets.all(12),
        children: [
          // Text("Aquí listaremos el compendio de widgets")
          ExpansionTile(
            leading: const Icon(Icons.text_fields, color: Colors.pink),
            title: const Text(
              "Texto e iconos",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            children: [
              Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  children: [
                    GuiaItem(
                      titulo: "Text",
                      descripcion: "Muestra una cadena de texto en pantalla. Se le puede dar estilo con style (tamaño, color, negrita,etc.)",
                      demo: const Text(
                        'Hola Tienda App v2',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      codigo: "Text('Hola Tienda App v2, style: TextStyle(fontSize: 16, fontWeiht: FontWeight.bold))",
                    ),
                    GuiaItem(
                      titulo: "Icon",
                      descripcion: "Dibuja un icono de la libreria de Material Icons, se personaliza con color y size(tamaño).                    ",
                      demo: const Icon(
                        Icons.shopping_bag,
                        size: 40,
                        color: Colors.pink,
                      ),
                      codigo: "Icon(Icons.shopping_bag, size: 40, color: Colos.pink)",
                    ),
                  ],
                ),
              ),
            ],
          ),
          ExpansionTile(
            leading: const Icon(Icons.touch_app, color: Colors.pinkAccent),
            title: const Text(
              "Botones y acciones",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            children: [
              Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  children: [
                    GuiaItem(
                      titulo: "ElevatedButtom",
                      descripcion: "Botón con relieve, usando para la acción principal de una pantalla o formulario",
                      demo: ElevatedButton(
                        onPressed: () {},
                        child: const Text("comprar ahora"),
                      ),
                      codigo: 'ElevatedButton(onPressed: (){}, child: const Text("comprar ahora"))',
                    ),
                    GuiaItem(
                      titulo: "IconButton",
                      descripcion: "Icono que funciona como botón",
                      demo: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.favorite),
                      ),
                      codigo: " IconButton(onPressed: (){}, icon: const Icon(Icons.favorite)",
                    ),
                    GuiaItem(
                      titulo: "FloatingActionButton",
                      descripcion: "botón circular flotante para la acción más importante",
                      demo: FloatingActionButton(
                        onPressed: () {},
                        backgroundColor: Colors.pink,
                        mini: true,
                        child: const Icon(Icons.add, color: Colors.white),
                      ),
                      codigo: "FloatingActionButton(onPressed: (){}, child: const Icon(Icons.add, color: Colors.white) ",
                    ),
                  ],
                ),
              ),
            ],
          ),
          ExpansionTile(
            leading: const Icon(Icons.dashboard_customize, color: Colors.pink),
            title: const Text(
              "Layaouts básicos",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            children: [
              Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  children: [
                    GuiaItem(
                      titulo: "Container",
                      descripcion: "Contenedor general, da tamaño, color, bordes y padding a su contenido",
                      demo: Container(
                        width: 100,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Colors.pink.shade100,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        alignment: Alignment.center,
                        child: const Text("Container"),
                      ),
                      codigo: "Container (width: 100, height: 60,decoration: BoxDecoration(color:...)",
                    ),
                    GuiaItem(
                      titulo: "SizeBox",
                      descripcion: "Crea un espacio vacio entre widgets, da un tamaño fijo, se usa como separador",
                      demo: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(width: 30, height: 30, color: Colors.pink),
                          const SizedBox(width: 20),
                          Container(width: 30, height: 30, color: Colors.pink),
                        ],
                      ),
                      codigo: "SizedBox(width:20)",
                    ),
                    GuiaItem(
                      titulo: "Row y Column",
                      descripcion: "Organiza los widgets en fila o columnnas",
                      demo: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(Icons.star, color: Colors.amber),
                          Icon(Icons.star, color: Colors.amber),
                          Icon(Icons.star, color: Colors.amber),
                        ],
                      ),
                      codigo: "Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [Icon(...), [Icon(...), [Icon(...)] )",
                    ),
                    GuiaItem(
                      titulo: "Expanded",
                      descripcion: "Dentro de un row o column obliga a un widget a ocupar todo el espacio restante disponible",
                      demo: SizedBox(
                        width: double.infinity,
                        child: Row(
                          children: [
                            const Icon(Icons.info, color: Colors.redAccent),
                            const SizedBox(width: 8),
                            Expanded(
                              child: Text(
                                "Este texto se debe ajustar automaticamente al espacio disponible",
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      ),
                      codigo: "Rox(children:[ Icon(...), Expanded(child:Text(...))])",
                    ),
                  ],
                ),
              ),
            ],
          ),
          ExpansionTile(
            leading: const Icon(Icons.dashboard_customize, color: Colors.pink),
            title: const Text(
              "Imagenes y tarjetas", 
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            children: [
              GuiaItem(
                titulo: "CircleAvatar",
                descripcion: "Muestra una imagen en pantalla",
                demo: const CircleAvatar(
                  radius: 28,
                  backgroundColor: Colors.red,
                  child: Icon(Icons.person, color: Colors.white),
                ),
                codigo: "CircleAvatar(backgroundImage: NetworkImage('https://picsum.photos/200'))",
              ),
              GuiaItem(
                titulo: "Image.network",
                descripcion: "Descarga una imagen y la muestra en pantalla a partir de una url",
                demo: ClipRRect(
                  borderRadius: BorderRadius.circular(19),
                  child: Image.network(
                    "https://images.pexels.com/photos/39300543/pexels-photo-39300543.jpeg",
                    height: 90,
                    width: 90,
                    errorBuilder: (context, error, stackTrace)=> Container(
                      height: 90,
                      width:90,
                      color: Colors.grey,
                      child: const Center(
                        child: Icon(Icons.error),
                      ),
                    ),
                  ),
                ),
                codigo: "Image(prodcto.imagenurl, height: 90, width: 90, errorBuilder: (context, error, stackTrace)=> Container(height: 90,width:90,color: Colors.grey, child: const Center(child: Icon(Icons.error)))",    
              ),
        ],
      ),
          ExpansionTile(
            leading: const Icon(Icons.hourglass_top, color: Colors.pink),
            title: const Text(
              "Indicadores de progreso",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            children: [
              Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  children: [
                    GuiaItem(
                      titulo: "CircularProgressIndicator",
                      descripcion:
                          "Muestra un indicador circular mientras una tarea o contenido está cargando.",
                      demo: const CircularProgressIndicator(
                        color: Colors.pink,
                      ),
                      codigo:
                          "CircularProgressIndicator(color: Colors.pink)",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  } 
}
