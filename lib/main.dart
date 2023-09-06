import 'package:checklist_artes/arte.dart';
import 'package:flutter/material.dart';

import 'lista_artes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final List<Arte> artes = [
    Arte(
      requerimento: 'Arte 1',
      dataInicio: DateTime.now(),
      dataFinalizacao: DateTime.now(),
      status: false,
      tipoChecklist: "ENVIO AO CLIENTE",
      checklist: [
        ChecklistItem(descricao: 'A nomenclatura do produto é a mesma do requerimento? Ex. Queijo Mussarela, Queijo prato, Café extra forte, café tradicional...'),
        ChecklistItem(descricao: 'Medidas da embalagem conferem com Requerimento?'),
        ChecklistItem(descricao: 'Medidas da arte conferem com o original ou com o requerimento?'),
        ChecklistItem(descricao: 'Leu e comparou a arte com o original ou com as modificações solicitadas?'),
        ChecklistItem(descricao: 'Colocou o número do requerimento na arte?'),
        ChecklistItem(descricao: 'Atualizou a data na ficha de arte?'),
        ChecklistItem(descricao: 'Colocou seu nome na ficha de arte?'),
        ChecklistItem(descricao: 'Número do requerimento na ficha de arte é o mesmo do requerimento?'),
        ChecklistItem(descricao: 'Adicionou a versão da arte na ficha de arte?'),
        ChecklistItem(descricao: 'Cores da frente na ficha batem com a arte?'),
        ChecklistItem(descricao: 'Cores do verso na ficha batem com a arte?'),
        ChecklistItem(descricao: 'Cores de encaixe e req. base constam na ficha e conferem com modificações na arte?'),
        ChecklistItem(descricao: 'Estrutura na ficha de arte bate com o Requerimento?'),
        ChecklistItem(descricao: 'Espessura do material na ficha de arte bate com o Requerimento?'),
        ChecklistItem(descricao: 'Pigmento na arte e na ficha bate com o requerimento?'),
        ChecklistItem(descricao: 'Solda na arte e na ficha bate com o requerimento?'),
        ChecklistItem(descricao: 'A Sanfona na arte bate com o requerimento?'),
        ChecklistItem(descricao: 'A quantidade de Imagens bate com o requerimento?'),
        ChecklistItem(descricao: 'A quantidade de Pistas na ficha de arte bate com o requerimento?'),
        ChecklistItem(descricao: 'O peso da embalagem corresponde ao do requerimento?'),
        ChecklistItem(descricao: 'A Impressora na ficha de arte bate com o requerimento?'),
        ChecklistItem(descricao: 'Distância de fundo na arte e na ficha bate com o requerimento e o original ?'),
        ChecklistItem(descricao: 'Cilindro bate com a qtde. imagens e com o requerimento?'),
        ChecklistItem(descricao: 'Ajustou as mínimas das cores de fotos e degradês?'),
        ChecklistItem(descricao: 'Perfil de cores corresponde à máquina?'),
        ChecklistItem(descricao: 'Adicionou o Nome do representante na ficha de arte?'),
        ChecklistItem(descricao: 'Informou se a Impressão será Interna ou Externa?'),
        ChecklistItem(descricao: 'Ajustou o arquivo no perfil de cores?'),
        ChecklistItem(descricao: 'Fez mapa do branco? (quando necessário)'),
        ChecklistItem(descricao: 'Enviou para o cliente aprovar?'),
      ],
    ),
    Arte(
      requerimento: 'Arte 2',
      dataInicio: DateTime.now(),
      dataFinalizacao: DateTime.now(),
      status: false,
      tipoChecklist: "ENVIO AO CLIENTE",
      checklist: [
        ChecklistItem(descricao: 'A nomenclatura do produto é a mesma do requerimento? Ex. Queijo Mussarela, Queijo prato, Café extra forte, café tradicional...'),
        ChecklistItem(descricao: 'Medidas da embalagem conferem com Requerimento?'),
        ChecklistItem(descricao: 'Medidas da arte conferem com o original ou com o requerimento?'),
        ChecklistItem(descricao: 'Leu e comparou a arte com o original ou com as modificações solicitadas?'),
        ChecklistItem(descricao: 'Colocou o número do requerimento na arte?'),
        ChecklistItem(descricao: 'Atualizou a data na ficha de arte?'),
        ChecklistItem(descricao: 'Colocou seu nome na ficha de arte?'),
        ChecklistItem(descricao: 'Número do requerimento na ficha de arte é o mesmo do requerimento?'),
        ChecklistItem(descricao: 'Adicionou a versão da arte na ficha de arte?'),
        ChecklistItem(descricao: 'Cores da frente na ficha batem com a arte?'),
        ChecklistItem(descricao: 'Cores do verso na ficha batem com a arte?'),
        ChecklistItem(descricao: 'Cores de encaixe e req. base constam na ficha e conferem com modificações na arte?'),
        ChecklistItem(descricao: 'Estrutura na ficha de arte bate com o Requerimento?'),
        ChecklistItem(descricao: 'Espessura do material na ficha de arte bate com o Requerimento?'),
        ChecklistItem(descricao: 'Pigmento na arte e na ficha bate com o requerimento?'),
        ChecklistItem(descricao: 'Solda na arte e na ficha bate com o requerimento?'),
        ChecklistItem(descricao: 'A Sanfona na arte bate com o requerimento?'),
        ChecklistItem(descricao: 'A quantidade de Imagens bate com o requerimento?'),
        ChecklistItem(descricao: 'A quantidade de Pistas na ficha de arte bate com o requerimento?'),
        ChecklistItem(descricao: 'O peso da embalagem corresponde ao do requerimento?'),
        ChecklistItem(descricao: 'A Impressora na ficha de arte bate com o requerimento?'),
        ChecklistItem(descricao: 'Distância de fundo na arte e na ficha bate com o requerimento e o original ?'),
        ChecklistItem(descricao: 'Cilindro bate com a qtde. imagens e com o requerimento?'),
        ChecklistItem(descricao: 'Ajustou as mínimas das cores de fotos e degradês?'),
        ChecklistItem(descricao: 'Perfil de cores corresponde à máquina?'),
        ChecklistItem(descricao: 'Adicionou o Nome do representante na ficha de arte?'),
        ChecklistItem(descricao: 'Informou se a Impressão será Interna ou Externa?'),
        ChecklistItem(descricao: 'Ajustou o arquivo no perfil de cores?'),
        ChecklistItem(descricao: 'Fez mapa do branco? (quando necessário)'),
        ChecklistItem(descricao: 'Enviou para o cliente aprovar?'),
      ],
    ),
    Arte(
      requerimento: 'Arte 3',
      dataInicio: DateTime.now(),
      dataFinalizacao: DateTime.now(),
      status: false,
      tipoChecklist: "ENVIO AO CLIENTE",
      checklist: [
        ChecklistItem(descricao: 'A nomenclatura do produto é a mesma do requerimento? Ex. Queijo Mussarela, Queijo prato, Café extra forte, café tradicional...'),
        ChecklistItem(descricao: 'Medidas da embalagem conferem com Requerimento?'),
        ChecklistItem(descricao: 'Medidas da arte conferem com o original ou com o requerimento?'),
        ChecklistItem(descricao: 'Leu e comparou a arte com o original ou com as modificações solicitadas?'),
        ChecklistItem(descricao: 'Colocou o número do requerimento na arte?'),
        ChecklistItem(descricao: 'Atualizou a data na ficha de arte?'),
        ChecklistItem(descricao: 'Colocou seu nome na ficha de arte?'),
        ChecklistItem(descricao: 'Número do requerimento na ficha de arte é o mesmo do requerimento?'),
        ChecklistItem(descricao: 'Adicionou a versão da arte na ficha de arte?'),
        ChecklistItem(descricao: 'Cores da frente na ficha batem com a arte?'),
        ChecklistItem(descricao: 'Cores do verso na ficha batem com a arte?'),
        ChecklistItem(descricao: 'Cores de encaixe e req. base constam na ficha e conferem com modificações na arte?'),
        ChecklistItem(descricao: 'Estrutura na ficha de arte bate com o Requerimento?'),
        ChecklistItem(descricao: 'Espessura do material na ficha de arte bate com o Requerimento?'),
        ChecklistItem(descricao: 'Pigmento na arte e na ficha bate com o requerimento?'),
        ChecklistItem(descricao: 'Solda na arte e na ficha bate com o requerimento?'),
        ChecklistItem(descricao: 'A Sanfona na arte bate com o requerimento?'),
        ChecklistItem(descricao: 'A quantidade de Imagens bate com o requerimento?'),
        ChecklistItem(descricao: 'A quantidade de Pistas na ficha de arte bate com o requerimento?'),
        ChecklistItem(descricao: 'O peso da embalagem corresponde ao do requerimento?'),
        ChecklistItem(descricao: 'A Impressora na ficha de arte bate com o requerimento?'),
        ChecklistItem(descricao: 'Distância de fundo na arte e na ficha bate com o requerimento e o original ?'),
        ChecklistItem(descricao: 'Cilindro bate com a qtde. imagens e com o requerimento?'),
        ChecklistItem(descricao: 'Ajustou as mínimas das cores de fotos e degradês?'),
        ChecklistItem(descricao: 'Perfil de cores corresponde à máquina?'),
        ChecklistItem(descricao: 'Adicionou o Nome do representante na ficha de arte?'),
        ChecklistItem(descricao: 'Informou se a Impressão será Interna ou Externa?'),
        ChecklistItem(descricao: 'Ajustou o arquivo no perfil de cores?'),
        ChecklistItem(descricao: 'Fez mapa do branco? (quando necessário)'),
        ChecklistItem(descricao: 'Enviou para o cliente aprovar?'),
      ],
    ),
    Arte(
      requerimento: 'Arte 4',
      dataInicio: DateTime.now(),
      dataFinalizacao: DateTime.now(),
      status: false,
      tipoChecklist: "PROVA DIGITAL",
      checklist: [
        ChecklistItem(descricao: 'A nomenclatura do produto é a mesma do requerimento? Ex. Queijo Mussarela, Queijo prato, Café extra forte, café tradicional...'),
        ChecklistItem(descricao: 'Medidas da embalagem conferem com Requerimento?'),
        ChecklistItem(descricao: 'Medidas da arte conferem com o original ou com o requerimento?'),
        ChecklistItem(descricao: 'Leu e comparou a arte com o original ou com as modificações solicitadas?'),
        ChecklistItem(descricao: 'Colocou o número do requerimento na arte?'),
        ChecklistItem(descricao: 'Atualizou a data na ficha de arte?'),
        ChecklistItem(descricao: 'Colocou seu nome na ficha de arte?'),
        ChecklistItem(descricao: 'Número do requerimento na ficha de arte é o mesmo do requerimento?'),
        ChecklistItem(descricao: 'Adicionou a versão da arte na ficha de arte?'),
        ChecklistItem(descricao: 'Cores da frente na ficha batem com a arte?'),
        ChecklistItem(descricao: 'Cores do verso na ficha batem com a arte?'),
        ChecklistItem(descricao: 'Cores de encaixe e req. base constam na ficha e conferem com modificações na arte?'),
        ChecklistItem(descricao: 'Estrutura na ficha de arte bate com o Requerimento?'),
        ChecklistItem(descricao: 'Espessura do material na ficha de arte bate com o Requerimento?'),
        ChecklistItem(descricao: 'Pigmento na arte e na ficha bate com o requerimento?'),
        ChecklistItem(descricao: 'Solda na arte e na ficha bate com o requerimento?'),
        ChecklistItem(descricao: 'A Sanfona na arte bate com o requerimento?'),
        ChecklistItem(descricao: 'A quantidade de Imagens bate com o requerimento?'),
        ChecklistItem(descricao: 'A quantidade de Pistas na ficha de arte bate com o requerimento?'),
        ChecklistItem(descricao: 'O peso da embalagem corresponde ao do requerimento?'),
        ChecklistItem(descricao: 'A Impressora na ficha de arte bate com o requerimento?'),
        ChecklistItem(descricao: 'Distância de fundo na arte e na ficha bate com o requerimento e o original ?'),
        ChecklistItem(descricao: 'Cilindro bate com a qtde. imagens e com o requerimento?'),
        ChecklistItem(descricao: 'Ajustou as mínimas das cores de fotos e degradês?'),
        ChecklistItem(descricao: 'Perfil de cores corresponde à máquina?'),
        ChecklistItem(descricao: 'Adicionou o Nome do representante na ficha de arte?'),
        ChecklistItem(descricao: 'Informou se a Impressão será Interna ou Externa?'),
        ChecklistItem(descricao: 'Ajustou o arquivo no perfil de cores?'),
        ChecklistItem(descricao: 'Fez mapa do branco? (quando necessário)'),
        ChecklistItem(descricao: 'Enviou para o cliente aprovar?'),
      ],
    ),
    Arte(
      requerimento: 'Arte 5',
      dataInicio: DateTime.now(),
      dataFinalizacao: DateTime.now(),
      status: false,
      tipoChecklist: "ENVIO AO CLIENTE",
      checklist: [
        ChecklistItem(descricao: 'A nomenclatura do produto é a mesma do requerimento? Ex. Queijo Mussarela, Queijo prato, Café extra forte, café tradicional...'),
        ChecklistItem(descricao: 'Medidas da embalagem conferem com Requerimento?'),
        ChecklistItem(descricao: 'Medidas da arte conferem com o original ou com o requerimento?'),
        ChecklistItem(descricao: 'Leu e comparou a arte com o original ou com as modificações solicitadas?'),
        ChecklistItem(descricao: 'Colocou o número do requerimento na arte?'),
        ChecklistItem(descricao: 'Atualizou a data na ficha de arte?'),
        ChecklistItem(descricao: 'Colocou seu nome na ficha de arte?'),
        ChecklistItem(descricao: 'Número do requerimento na ficha de arte é o mesmo do requerimento?'),
        ChecklistItem(descricao: 'Adicionou a versão da arte na ficha de arte?'),
        ChecklistItem(descricao: 'Cores da frente na ficha batem com a arte?'),
        ChecklistItem(descricao: 'Cores do verso na ficha batem com a arte?'),
        ChecklistItem(descricao: 'Cores de encaixe e req. base constam na ficha e conferem com modificações na arte?'),
        ChecklistItem(descricao: 'Estrutura na ficha de arte bate com o Requerimento?'),
        ChecklistItem(descricao: 'Espessura do material na ficha de arte bate com o Requerimento?'),
        ChecklistItem(descricao: 'Pigmento na arte e na ficha bate com o requerimento?'),
        ChecklistItem(descricao: 'Solda na arte e na ficha bate com o requerimento?'),
        ChecklistItem(descricao: 'A Sanfona na arte bate com o requerimento?'),
        ChecklistItem(descricao: 'A quantidade de Imagens bate com o requerimento?'),
        ChecklistItem(descricao: 'A quantidade de Pistas na ficha de arte bate com o requerimento?'),
        ChecklistItem(descricao: 'O peso da embalagem corresponde ao do requerimento?'),
        ChecklistItem(descricao: 'A Impressora na ficha de arte bate com o requerimento?'),
        ChecklistItem(descricao: 'Distância de fundo na arte e na ficha bate com o requerimento e o original ?'),
        ChecklistItem(descricao: 'Cilindro bate com a qtde. imagens e com o requerimento?'),
        ChecklistItem(descricao: 'Ajustou as mínimas das cores de fotos e degradês?'),
        ChecklistItem(descricao: 'Perfil de cores corresponde à máquina?'),
        ChecklistItem(descricao: 'Adicionou o Nome do representante na ficha de arte?'),
        ChecklistItem(descricao: 'Informou se a Impressão será Interna ou Externa?'),
        ChecklistItem(descricao: 'Ajustou o arquivo no perfil de cores?'),
        ChecklistItem(descricao: 'Fez mapa do branco? (quando necessário)'),
        ChecklistItem(descricao: 'Enviou para o cliente aprovar?'),
      ],
    ),
    Arte(
      requerimento: 'Arte 6',
      dataInicio: DateTime.now(),
      dataFinalizacao: DateTime.now(),
      status: false,
      tipoChecklist: "PROCESSO DE CURVAS",
      checklist: [
        ChecklistItem(descricao: 'A nomenclatura do produto é a mesma do requerimento? Ex. Queijo Mussarela, Queijo prato, Café extra forte, café tradicional...'),
        ChecklistItem(descricao: 'Medidas da embalagem conferem com Requerimento?'),
        ChecklistItem(descricao: 'Medidas da arte conferem com o original ou com o requerimento?'),
        ChecklistItem(descricao: 'Leu e comparou a arte com o original ou com as modificações solicitadas?'),
        ChecklistItem(descricao: 'Colocou o número do requerimento na arte?'),
        ChecklistItem(descricao: 'Atualizou a data na ficha de arte?'),
        ChecklistItem(descricao: 'Colocou seu nome na ficha de arte?'),
        ChecklistItem(descricao: 'Número do requerimento na ficha de arte é o mesmo do requerimento?'),
        ChecklistItem(descricao: 'Adicionou a versão da arte na ficha de arte?'),
        ChecklistItem(descricao: 'Cores da frente na ficha batem com a arte?'),
        ChecklistItem(descricao: 'Cores do verso na ficha batem com a arte?'),
        ChecklistItem(descricao: 'Cores de encaixe e req. base constam na ficha e conferem com modificações na arte?'),
        ChecklistItem(descricao: 'Estrutura na ficha de arte bate com o Requerimento?'),
        ChecklistItem(descricao: 'Espessura do material na ficha de arte bate com o Requerimento?'),
        ChecklistItem(descricao: 'Pigmento na arte e na ficha bate com o requerimento?'),
        ChecklistItem(descricao: 'Solda na arte e na ficha bate com o requerimento?'),
        ChecklistItem(descricao: 'A Sanfona na arte bate com o requerimento?'),
        ChecklistItem(descricao: 'A quantidade de Imagens bate com o requerimento?'),
        ChecklistItem(descricao: 'A quantidade de Pistas na ficha de arte bate com o requerimento?'),
        ChecklistItem(descricao: 'O peso da embalagem corresponde ao do requerimento?'),
        ChecklistItem(descricao: 'A Impressora na ficha de arte bate com o requerimento?'),
        ChecklistItem(descricao: 'Distância de fundo na arte e na ficha bate com o requerimento e o original ?'),
        ChecklistItem(descricao: 'Cilindro bate com a qtde. imagens e com o requerimento?'),
        ChecklistItem(descricao: 'Ajustou as mínimas das cores de fotos e degradês?'),
        ChecklistItem(descricao: 'Perfil de cores corresponde à máquina?'),
        ChecklistItem(descricao: 'Adicionou o Nome do representante na ficha de arte?'),
        ChecklistItem(descricao: 'Informou se a Impressão será Interna ou Externa?'),
        ChecklistItem(descricao: 'Ajustou o arquivo no perfil de cores?'),
        ChecklistItem(descricao: 'Fez mapa do branco? (quando necessário)'),
        ChecklistItem(descricao: 'Enviou para o cliente aprovar?'),
      ],
    ),
    Arte(
      requerimento: 'Arte 7',
      dataInicio: DateTime.now(),
      dataFinalizacao: DateTime.now(),
      status: false,
      tipoChecklist: "ENVIO AO CLIENTE",
      checklist: [
        ChecklistItem(descricao: 'A nomenclatura do produto é a mesma do requerimento? Ex. Queijo Mussarela, Queijo prato, Café extra forte, café tradicional...'),
        ChecklistItem(descricao: 'Medidas da embalagem conferem com Requerimento?'),
        ChecklistItem(descricao: 'Medidas da arte conferem com o original ou com o requerimento?'),
        ChecklistItem(descricao: 'Leu e comparou a arte com o original ou com as modificações solicitadas?'),
        ChecklistItem(descricao: 'Colocou o número do requerimento na arte?'),
        ChecklistItem(descricao: 'Atualizou a data na ficha de arte?'),
        ChecklistItem(descricao: 'Colocou seu nome na ficha de arte?'),
        ChecklistItem(descricao: 'Número do requerimento na ficha de arte é o mesmo do requerimento?'),
        ChecklistItem(descricao: 'Adicionou a versão da arte na ficha de arte?'),
        ChecklistItem(descricao: 'Cores da frente na ficha batem com a arte?'),
        ChecklistItem(descricao: 'Cores do verso na ficha batem com a arte?'),
        ChecklistItem(descricao: 'Cores de encaixe e req. base constam na ficha e conferem com modificações na arte?'),
        ChecklistItem(descricao: 'Estrutura na ficha de arte bate com o Requerimento?'),
        ChecklistItem(descricao: 'Espessura do material na ficha de arte bate com o Requerimento?'),
        ChecklistItem(descricao: 'Pigmento na arte e na ficha bate com o requerimento?'),
        ChecklistItem(descricao: 'Solda na arte e na ficha bate com o requerimento?'),
        ChecklistItem(descricao: 'A Sanfona na arte bate com o requerimento?'),
        ChecklistItem(descricao: 'A quantidade de Imagens bate com o requerimento?'),
        ChecklistItem(descricao: 'A quantidade de Pistas na ficha de arte bate com o requerimento?'),
        ChecklistItem(descricao: 'O peso da embalagem corresponde ao do requerimento?'),
        ChecklistItem(descricao: 'A Impressora na ficha de arte bate com o requerimento?'),
        ChecklistItem(descricao: 'Distância de fundo na arte e na ficha bate com o requerimento e o original ?'),
        ChecklistItem(descricao: 'Cilindro bate com a qtde. imagens e com o requerimento?'),
        ChecklistItem(descricao: 'Ajustou as mínimas das cores de fotos e degradês?'),
        ChecklistItem(descricao: 'Perfil de cores corresponde à máquina?'),
        ChecklistItem(descricao: 'Adicionou o Nome do representante na ficha de arte?'),
        ChecklistItem(descricao: 'Informou se a Impressão será Interna ou Externa?'),
        ChecklistItem(descricao: 'Ajustou o arquivo no perfil de cores?'),
        ChecklistItem(descricao: 'Fez mapa do branco? (quando necessário)'),
        ChecklistItem(descricao: 'Enviou para o cliente aprovar?'),
      ],
    ),
  ];

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ListaArtes(artes: artes),
    );
  }
}
