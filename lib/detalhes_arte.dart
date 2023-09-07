import 'package:flutter/material.dart';
import 'arte_model.dart';
import 'progress_indicator.dart';
import 'util.dart';

class DetalhesArte extends StatefulWidget {
  final ArteModel arte;

  const DetalhesArte({super.key, required this.arte});

  @override
  DetalhesArteState createState() => DetalhesArteState();
}

class DetalhesArteState extends State<DetalhesArte> {
  double _progresso = 0.0; // Variável para armazenar o progresso

  @override
  void initState() {
    super.initState();
    // Inicialize o progresso no initState com base na função calcularProgresso
    _progresso = calcularProgresso(widget.arte);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text(widget.arte.requerimento),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            child: Row(
              children: [
                Text(
                  'Finalidade: ${widget.arte.tipoChecklist}',
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
                    tileColor: Colors.white,
                    activeColor: const Color.fromARGB(255, 17, 70, 114),
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
                        // Atualize o progresso quando houver alterações
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
