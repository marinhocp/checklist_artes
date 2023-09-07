import 'package:flutter/material.dart';

class ProgressoIndicator extends StatelessWidget {
  final double progresso;

  const ProgressoIndicator({super.key, required this.progresso});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: LinearProgressIndicator(
        minHeight: 10,
        backgroundColor: Colors.grey,
        valueColor: const AlwaysStoppedAnimation<Color>(Color.fromARGB(255, 10, 117, 0)),
        value: progresso / 100.0, // Converter para uma escala de 0 a 1
      ),
    );
  }
}
