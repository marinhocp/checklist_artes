import 'package:checklist_artes/arte_model.dart';
import 'package:flutter/material.dart';
import 'custom_search_delegate.dart';
import 'detalhes_arte.dart';

class ListaArtes extends StatelessWidget {
  final List<ArteModel> artes;

  const ListaArtes({super.key, required this.artes});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              showSearch(
                context: context,
                delegate: CustomSearchDelegate(artes),
              );
            },
          ),
        ],
        backgroundColor: Colors.blueGrey,
        title: const Text('Lista de Artes'),
      ),
      body: ListView.builder(
        itemCount: artes.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            hoverColor: const Color.fromARGB(255, 220, 220, 220),
            title: Text('Arte: ${artes[index].requerimento}'),
            subtitle: Text('Status: ${artes[index].status ? 'Concluído' : 'Pendente'}',
                style: const TextStyle(
                  color: Colors.grey,
                )),
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
