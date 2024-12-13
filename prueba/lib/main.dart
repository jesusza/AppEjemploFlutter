import 'dart:developer'; // Importa log correctamente
import 'package:flutter/material.dart';
import 'dinamyc_list.dart';
import 'my_home_page.dart'; // Importa el archivo my_home_page.dart

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: const MyHomePage(
        title: 'Prueba',
      ),
    );
  }
}




