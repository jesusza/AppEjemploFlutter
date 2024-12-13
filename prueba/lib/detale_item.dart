import 'package:flutter/material.dart';

class DetailItem extends StatelessWidget { // Cambié el nombre de la clase para seguir la convención y corregí "StallesWidget" a "StatelessWidget"
  const DetailItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Atras'), // Título del AppBar
      ),
      body: const Center(
        child: Text('Estoy en Detail'), // Texto centrado en el cuerpo
      ), // Center
    ); // Scaffold
  }
}
