import 'package:flutter/material.dart';
import '../Widget/Organisms/AmigosForm.dart';
import '../Controller/numeros_controller.dart'; // Import del Controller

class HomePage extends StatelessWidget {
  HomePage({super.key});

  // Creamos el controller
  final AmigosController controller = AmigosController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Números Amigos')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: AmigosForm(controller: controller), // Pasamos el controller
      ),
    );
  }
}
