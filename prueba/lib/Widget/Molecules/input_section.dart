import 'package:flutter/material.dart';
import '../Atoms/custom_textfield.dart';

class InputSection extends StatelessWidget {
  final TextEditingController aController;
  final TextEditingController bController;

  const InputSection({
    super.key,
    required this.aController,
    required this.bController,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextField(
          label: 'Numero A',
          controller: aController,
          keyboardType: TextInputType.number,
        ),
        const SizedBox(height: 16),
        CustomTextField(
          label: 'Numero B',
          controller: bController,
          keyboardType: TextInputType.number,
        ),
      ],
    );
  }
}
