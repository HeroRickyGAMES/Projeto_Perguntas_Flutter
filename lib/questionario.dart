import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';


class Questionario extends StatelessWidget{

  final List<Map<String, Object>> perguntas;
  final int PerguntaSelecionada;
  final void Function() responder;

  Questionario({
    required this.perguntas,
    required this.PerguntaSelecionada,
    required this.responder
  });

  bool get temPerguntaSelecionada{
    return PerguntaSelecionada < perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    List<String>? respostas = temPerguntaSelecionada ? perguntas[PerguntaSelecionada]['respostas'] as List<String> : null;

    return Column(
      children: [
        Questao(perguntas[PerguntaSelecionada]['texto'] as String),
        ...respostas!.map((t) => Resposta(t, responder)).toList(),
      ],
    );

  }
}