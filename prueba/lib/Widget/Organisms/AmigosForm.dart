import 'package:flutter/material.dart';
import '../Atoms/custom_button.dart';
import '../Molecules/input_section.dart';
import '../../Controller/numeros_controller.dart';

class AmigosForm extends StatelessWidget {
  final AmigosController controller;

  const AmigosForm({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        InputSection(
          aController: controller.aController,
          bController: controller.bController,
        ),
        const SizedBox(height: 20),
        CustomButton(text: 'Verificar', onPressed: controller.verificar),
        const SizedBox(height: 20),
        AnimatedBuilder(
          animation: controller,
          builder: (context, _) {
            return Text(
              controller.resultado,
              style: TextStyle(
                fontSize: 16,
                color: controller.resultado.contains('no son amigos')
                    ? Colors.red
                    : Colors.green,
              ),
            );
          },
        ),
      ],
    );
  }
}
