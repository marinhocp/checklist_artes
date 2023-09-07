import 'package:flutter/material.dart';

class ProgressoIndicator extends StatelessWidget {
  final double progresso;
  const ProgressoIndicator({Key? key, required this.progresso}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Expanded(
            child: LinearProgressIndicator(
              minHeight: 6,
              backgroundColor: const Color.fromARGB(255, 216, 214, 214),
              valueColor: const AlwaysStoppedAnimation<Color>(Color.fromARGB(255, 220, 166, 104)),
              value: progresso / 100, // Converter para uma escala de 0 a 1
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              '${progresso.toStringAsFixed(1)}%', // Use interpolação de strings para mostrar o valor do progresso
              style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 15),
            ),
          )
        ],
      ),
    );
  }
}
