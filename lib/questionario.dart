import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

//Programado por HeroRickyGames

class Questionario extends StatelessWidget{

  final List<Map<String, Object>> perguntas;
  final int PerguntaSelecionada;
  final void Function(int) responder;

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
    List<Map<String, Object>>? respostas = temPerguntaSelecionada ? perguntas[PerguntaSelecionada]['respostas'] as List<Map<String, Object>> : null;

    return Column(
      children: [
        Questao(perguntas[PerguntaSelecionada]['texto'] as String),
        ...respostas!.map((resp) {
              return Resposta(
              resp['texto'].toString(),
              () => responder(int.parse(resp['pontuacao'].toString())),
              );
       }
    )],
    );
  }
}