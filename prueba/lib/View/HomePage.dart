  import 'package:flutter/material.dart';
  import '../Widget/Organisms/AmigosForm.dart';

  class HomePage extends StatelessWidget {
    const HomePage({super.key});

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(title: const Text('Números Amigos')),
        body: const Padding(
          padding: EdgeInsets.all(20),
          child: AmigosForm(),
        ),
      );
    }
  }
