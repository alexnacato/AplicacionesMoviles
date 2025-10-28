import 'package:flutter/material.dart';
import '../Model/numeros_model.dart';

class AmigosController extends ChangeNotifier {
  final TextEditingController aController = TextEditingController();
  final TextEditingController bController = TextEditingController();

  String resultado = '';

  void verificar() {
    final a = int.tryParse(aController.text);
    final b = int.tryParse(bController.text);

    if (a == null || b == null || a <= 0 || b <= 0) {
      resultado = 'Ingrese solo números enteros positivos.';
    } else {
      final numeros = Numeros(a, b);
      resultado = numeros.sonAmigos()
          ? '$a y $b son números amigos.'
          : '$a y $b no son amigos.';
    }

    
  }
}
