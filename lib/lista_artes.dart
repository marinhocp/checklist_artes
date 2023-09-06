import 'package:checklist_artes/arte.dart';
import 'package:flutter/material.dart';
import 'detalhes_arte.dart';

class ListaArtes extends StatelessWidget {
  final List<Arte> artes;

  const ListaArtes({super.key, required this.artes});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de Artes'),
      ),
      body: ListView.builder(
        itemCount: artes.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(artes[index].requerimento),
            subtitle: Text('Status: ${artes[index].status ? 'Concluído' : 'Pendente'}'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetalhesArte(arte: artes[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
