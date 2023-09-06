class Arte {
  String requerimento;
  DateTime dataInicio;
  DateTime dataFinalizacao;
  bool status;
  List<ChecklistItem> checklist;

  Arte({
    required this.requerimento,
    required this.dataInicio,
    required this.dataFinalizacao,
    required this.status,
    required this.checklist,
  });
}

class ChecklistItem {
  String descricao;
  bool concluido;

  ChecklistItem({
    required this.descricao,
    this.concluido = false,
  });
}
