import '../models/arte_model.dart';

double calcularProgresso(ArteModel arte) {
  int totalItens = arte.checklist.length;
  int itensConcluidos = arte.checklist.where((item) => item.concluido).length;

  if (totalItens == 0) {
    return 0.0; // Evita divisão por zero
  }

  return (itensConcluidos / totalItens) * 100.0;
}
