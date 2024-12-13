import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  // Método para incrementar el contador
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Establece el color de fondo usando el esquema de color del tema
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title), // Título dinámico de la app bar
      ),
      body: Center(
        child: Column(
          // Espaciado vertical entre widgets dentro de la columna
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            // Fila horizontal de widgets
            Row(
              mainAxisAlignment: MainAxisAlignment.center, // Centra los widgets en la fila
              children: [
                // Padding alrededor del texto
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Prueba padding'), // Texto con padding
                ),
                // Contenedor con fondo azul y texto blanco
                Container(
                  color: Colors.blueAccent,
                  margin: const EdgeInsets.all(8), // Margen externo
                  padding: const EdgeInsets.all(8), // Relleno interno
                  child: const Text(
                    'Prueba Container',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                // Tarjeta (Card) correctamente estructurada
                const Card(
                  margin: const EdgeInsets.all(8), // Margen externo
                  child: Padding(
                    padding: const EdgeInsets.all(8.0), // Relleno interno
                    child: const Text(
                      'Prueba Card',
                      style: TextStyle(fontSize: 24), // Estilo del texto
                    ),
                  ),
                ),
                // Caja con ajuste de contenido
                SizedBox(
                  width: 80,
                  child: FittedBox(
                    fit: BoxFit.cover, // Ajusta el contenido para cubrir el espacio
                    child: const Icon(Icons.star, size: 50), // Ícono ajustado
                  ),
                ),
                // Otros elementos de texto e íconos con separación
                const Text('Prueba1'),
                const SizedBox(width: 10), // Espacio entre widgets
                const Icon(Icons.add_a_photo),
                const SizedBox(width: 10),
                const Text('Prueba2'),
              ],
            ),
            // Texto estático
            const Text(
              'You have pushed the button this many times:',
              style: TextStyle(color: Colors.blue, fontSize: 24),
              overflow: TextOverflow.clip, // Manejo de desbordamiento del texto
            ),
            // Contador dinámico
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      // Botón flotante para incrementar el contador
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter, // Llama al método para incrementar
        tooltip: 'Increment',
        child: const Icon(Icons.add), // Ícono del botón
      ),
    );
  }
}
