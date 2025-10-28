import 'package:flutter/material.dart';
import './View/HomePage.dart'; // Ajusta la ruta según tu proyecto

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Números Amigos',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.grey[100],
      ),
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.system, // Cambia entre modo claro y oscuro automáticamente
      home: const HomePage(),
    );
  }
}
