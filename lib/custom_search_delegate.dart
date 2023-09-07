import 'package:flutter/material.dart';

import 'arte_model.dart';
import 'detalhes_arte.dart';

class CustomSearchDelegate extends SearchDelegate<String> {
  final List<ArteModel> listaDeArtes; // Lista de objetos Arte

  CustomSearchDelegate(this.listaDeArtes);

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,
        progress: transitionAnimation,
      ),
      onPressed: () {
        close(context, "");
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Center(
      child: Text('Resultados para: $query'),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final filteredSuggestions = query.isEmpty ? listaDeArtes : listaDeArtes.where((arte) => arte.requerimento.toLowerCase().contains(query.toLowerCase()) || arte.tipoChecklist.toLowerCase().contains(query.toLowerCase())).toList();

    return ListView.builder(
      itemCount: filteredSuggestions.length,
      itemBuilder: (context, index) {
        final arte = filteredSuggestions[index];
        return ListTile(
          title: Text(arte.requerimento),
          subtitle: Text(arte.tipoChecklist),
          onTap: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => DetalhesArte(arte: arte),
              ),
            );
          },
        );
      },
    );
  }
}
