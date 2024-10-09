import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart'; // Import correcto para firebase_core
import 'login_screen.dart'; // Asegúrate de que esta ruta sea correcta

// Inicializa Firebase de manera asíncrona
void main() async {
  WidgetsFlutterBinding
      .ensureInitialized(); // Asegura que los widgets estén inicializados
  await Firebase.initializeApp(); // Inicializa Firebase
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Firebase Login',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginScreen(), // Pantalla de inicio
    );
  }
}
