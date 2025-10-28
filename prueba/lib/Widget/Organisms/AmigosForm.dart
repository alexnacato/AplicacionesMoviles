import 'package:flutter/material.dart';
import '../Atoms/custom_button.dart';
import '../Molecules/input_section.dart';
import '../../Model/numeros_model.dart';
import '../../View/ResultadoPage.dart'; // Importa la página de resultado

class AmigosForm extends StatefulWidget {
  const AmigosForm({super.key});

  @override
  State<AmigosForm> createState() => _AmigosFormState();
}

class _AmigosFormState extends State<AmigosForm> {
  final TextEditingController aController = TextEditingController();
  final TextEditingController bController = TextEditingController();
  String resultado = '';

  void verificar() {
    final a = int.tryParse(aController.text);
    final b = int.tryParse(bController.text);

    if (a == null || b == null || a <= 0 || b <= 0) {
      setState(() {
        resultado = 'Ingrese solo números enteros positivos.';
      });
      return;
    }

    final numeros = Numeros(a, b);
    final sonAmigos = numeros.sonAmigos();

    // Construimos el mensaje
    final mensaje = sonAmigos
        ? '$a y $b son números amigos.'
        : '$a y $b no son amigos.';

    // Navegamos a ResultadoPage
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ResultadoPage(resultado: mensaje),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        InputSection(aController: aController, bController: bController),
        const SizedBox(height: 20),
        CustomButton(text: 'Verificar', onPressed: verificar),
      ],
    );
  }
}
