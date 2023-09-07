import 'package:checklist_artes/dados/arte_data.dart';
import 'package:flutter/material.dart';
import '../models/arte_model.dart';
import '../components/progress_indicator.dart';
import '../utilities/util.dart';
import 'adicionar_arte.dart';
import 'checklist_personalizado.dart';

class DetalhesArte extends StatefulWidget {
  final ArteModel arte;
  const DetalhesArte({super.key, required this.arte});

  @override
  DetalhesArteState createState() => DetalhesArteState();
}

class DetalhesArteState extends State<DetalhesArte> {
  double _progresso = 0.0;
  String selectedValue = 'Opção 1';

  @override
  void initState() {
    super.initState();
    _progresso = calcularProgresso(widget.arte);
  }

  final List<String> items = ['Opção 1', 'Opção 2', 'Opção 3', 'Personalizado'];

  void _onDropdownItemSelected(String newValue) {
    setState(() {
      selectedValue = newValue;
    });

    if (newValue == 'Personalizado') {
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => const Personalizado(),
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 60, 62, 63),
        title: Text(widget.arte.requerimento),
        actions: [
          PopupMenuButton<String>(
            onSelected: _onDropdownItemSelected,
            icon: const Icon(Icons.add),
            itemBuilder: (BuildContext context) {
              return [
                const PopupMenuItem<String>(
                  value: 'nova_checklist',
                  enabled: false,
                  child: Text("NOVA CHECKLIST", style: TextStyle(fontWeight: FontWeight.bold)), // Desativa a seleção deste item
                ),
                const PopupMenuDivider(), // Adiciona uma divisão entre a frase e as outras opções
                ...items.map((String item) {
                  return PopupMenuItem<String>(
                    value: item,
                    child: Text(item),
                  );
                }).toList(),
              ];
            },
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            child: Row(
              children: [
                Text(
                  widget.arte.tipoChecklist,
                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ],
            ),
          ),
          ProgressoIndicator(
            progresso: _progresso,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: ListView.builder(
                itemCount: widget.arte.checklist.length,
                itemBuilder: (BuildContext context, int index) {
                  final checklistItem = widget.arte.checklist[index];
                  return CheckboxListTile(
                    visualDensity: const VisualDensity(horizontal: 4, vertical: 2),
                    activeColor: const Color.fromARGB(255, 17, 70, 114),
                    title: Text(
                      checklistItem.descricao,
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        color: const Color.fromARGB(255, 43, 43, 43),
                        decoration: checklistItem.concluido ? TextDecoration.lineThrough : TextDecoration.none,
                      ),
                    ),
                    value: checklistItem.concluido,
                    onChanged: (bool? value) {
                      setState(() {
                        checklistItem.concluido = value ?? false;
                        _progresso = calcularProgresso(widget.arte);
                      });
                    },
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
