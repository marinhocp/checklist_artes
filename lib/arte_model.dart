class ArteModel {
  String requerimento;
  String tipoChecklist;
  DateTime dataInicio;
  DateTime dataFinalizacao;
  bool status;
  List<ChecklistItem> checklist;

  ArteModel({required this.requerimento, required this.tipoChecklist, required this.dataInicio, required this.dataFinalizacao, required this.status, required this.checklist});
}

class ChecklistItem {
  String descricao;
  bool concluido;

  ChecklistItem({
    required this.descricao,
    this.concluido = false,
  });
}
