import 'package:flutter/material.dart';
import 'arte.dart';

class DetalhesArte extends StatefulWidget {
  final Arte arte;

  const DetalhesArte({super.key, required this.arte});

  @override
  DetalhesArteState createState() => DetalhesArteState();
}

class DetalhesArteState extends State<DetalhesArte> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalhes da Arte'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Requerimento: ${widget.arte.requerimento}'),
          Text('Status: ${widget.arte.status ? 'Concluído' : 'Pendente'}'),
          Text('Data Início: ${widget.arte.dataInicio.toString()}'),
          Text('Data Finalização: ${widget.arte.dataFinalizacao.toString()}'),
          const SizedBox(
            width: 50,
          ),
          Text(widget.arte.tipoChecklist),
          Expanded(
            child: ListView.builder(
              itemCount: widget.arte.checklist.length,
              itemBuilder: (BuildContext context, int index) {
                final checklistItem = widget.arte.checklist[index];
                return CheckboxListTile(
                  title: Text(
                    checklistItem.descricao,
                    style: TextStyle(
                      decoration: checklistItem.concluido ? TextDecoration.lineThrough : TextDecoration.none,
                    ),
                  ),
                  value: checklistItem.concluido,
                  onChanged: (bool? value) {
                    setState(() {
                      // Atualize o status da tarefa quando o checkbox for alterado
                      checklistItem.concluido = value ?? false;
                    });
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
