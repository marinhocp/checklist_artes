import 'package:checklist_artes/models/arte_model.dart';
import 'package:checklist_artes/pages/adicionar_arte.dart';
import 'package:flutter/material.dart';
import '../components/custom_search_delegate.dart';
import 'detalhes_arte.dart';

class ListaArtes extends StatefulWidget {
  final List<ArteModel> artes;

  const ListaArtes({super.key, required this.artes});

  @override
  State<ListaArtes> createState() => _ListaArtesState();
}

class _ListaArtesState extends State<ListaArtes> {
  bool isFocused = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        actions: [
          IconButton(
            icon: const Icon(
              Icons.control_point,
              color: Color.fromARGB(205, 220, 170, 100),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AdicionarArte(),
                ),
              );
            },
          ),
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              showSearch(
                context: context,
                delegate: CustomSearchDelegate(widget.artes),
              );
            },
          ),
        ],
        backgroundColor: const Color.fromARGB(255, 60, 62, 63),
        title: const Text(
          'Lista de Artes',
          style: TextStyle(color: Color.fromARGB(255, 220, 166, 104)),
        ),
      ),
      body: ListView.builder(
        itemCount: widget.artes.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            trailing: IconButton(
                onPressed: () {
                  // Adicionar a função de deletar o cadastro aqui.
                },
                icon: const Icon(
                  Icons.delete,
                  color: Color.fromARGB(205, 220, 170, 100),
                )),
            hoverColor: const Color.fromARGB(255, 220, 220, 220),
            title: Text(
              'Arte: ${widget.artes[index].requerimento}',
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            subtitle: Text('Status: ${widget.artes[index].status ? 'Concluído' : 'Pendente'}',
                style: const TextStyle(
                  color: Colors.grey,
                )),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetalhesArte(arte: widget.artes[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
