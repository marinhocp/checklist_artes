import 'package:checklist_artes/arte.dart';
import 'package:flutter/material.dart';

import 'lista_artes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final List<Arte> artes = [
    Arte(
      requerimento: 'Arte 1',
      dataInicio: DateTime.now(),
      dataFinalizacao: DateTime.now(),
      status: false,
      checklist: [
        ChecklistItem(descricao: 'Tarefa 1'),
        ChecklistItem(descricao: 'Tarefa 2'),
      ],
    ),
    // Adicione mais artes aqui
  ];

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ListaArtes(artes: artes),
    );
  }
}
