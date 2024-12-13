import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:faker/faker.dart'; // Asegúrate de importar faker correctamente

class dinamicList extends StatelessWidget {
  const dinamicList({super.key});

  @override
  Widget build(BuildContext context) {
    final faker = Faker(); // Crea una instancia de Faker

    return Scaffold(
      appBar: AppBar(
        title: const Text('Prueba de lista'),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {
              log('message::::$index');
            },
            contentPadding: const EdgeInsets.only(left: 0),
            leading: const Icon(Icons.attach_money, color: Colors.green),
            title: Text(faker.person.name()),
            subtitle: Text(
              'Monto: \$${faker.randomGenerator.decimal(min: 50, scale: 500).toStringAsFixed(2)}',
            ),
          );
        },
      ),
    );
  }
}
