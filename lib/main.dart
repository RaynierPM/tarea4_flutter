import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final String fecha = DateTime.now().toString().split(" ")[0];
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tarea#4 - Flutter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Tarea#4 - Flutter"),
          backgroundColor: Colors.orange
        ),
        body: Center(
          child: Column(
            children: [
              const Image(
                image: AssetImage("ray.png"),
                width: 300,
              ),
              const Text("Nombre: Raynier Perez Minyety"),
              const Text("Matricula: 2021-0218"),
              Text("La fecha actual es: $fecha")
            ]
          ),
        ),
      )
    );
  }
}