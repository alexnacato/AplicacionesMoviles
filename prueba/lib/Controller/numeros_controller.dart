import 'package:flutter/material.dart';
import '../Model/numeros_model.dart';

class AmigosController extends ChangeNotifier {
  final TextEditingController aController = TextEditingController();
  final TextEditingController bController = TextEditingController();

  String resultado = '';

  void verificar() {
    // Intentar convertir los textos a enteros
    final a = int.tryParse(aController.text);
    final b = int.tryParse(bController.text);

    
    if (a == null || b == null || a <= 0 || b <= 0) {
      resultado = 'Ingrese solo nUmeros enteros positivos.';
      return;
    }

    
    final numeros = Numeros(a, b);

    
    final sonAmigos = numeros.sonAmigos();

    
    resultado = sonAmigos
        ? ' $a y $b son nUmeros amigos.'
        : ' $a y $b no son amigos.';

  
  }
}
