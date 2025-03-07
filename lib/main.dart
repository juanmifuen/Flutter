import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Carros Eléctricos',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Usuario: Juan Miranda Fuentes'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: 3, // Número de tarjetas
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            child: ListTile(
              leading: Container(
                width: 50,
                height: 50,
                color: Colors.grey[300], // Placeholder para la imagen
                child: const Icon(Icons.image, size: 30),
              ),
              title: const Text('Placa: ERF888'),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('Conductor: Chapacua'),
                  Text('Empresa: XYZ'),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}