import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './questionario.dart';
import './resultado.dart';

//Programado por HeroRickyGames

main(){
    runApp(PerguntaApp());
}

class _PerguntaAppState extends State<PerguntaApp>{

  var PerguntaSelecionada = 0;
  var pontuacaoTotal = 0;
  List<String> respostas =[];
  List<Widget> widgets = [];
  final List<Map <String, Object>> perguntas = const [
    {
      'texto': 'Qual é a sua cor favorita?',
      'respostas': [
          {'texto': 'Preto', 'pontuacao': 10},
          {'texto': 'Vermelho', 'pontuacao': 5},
          {'texto': 'Verde', 'pontuacao': 3},
          {'texto': 'Branco', 'pontuacao': 1},
      ],
    },
    {
      'texto': "Qual é o seu animal favorito?",
      'respostas': [
        {'texto': 'Coelho', 'pontuacao': 10},
        {'texto': 'Cobra','pontuacao': 5},
        {'texto': 'Elefante','pontuacao': 3},
        {'texto': 'Leão', 'pontuacao': 1},
        ],
    },
    {
      'texto': "Porque o Jailson Mendes demorou para entregar a peça para o Kauan para relaxar?",
      'respostas': [
            {'texto': 'Foi dar a bunda','pontuacao': 1},
            {'texto': 'Foi cagar no mato antes de dar','pontuacao': 3},
            {'texto': 'Foi buscar na China','pontuacao': 5},
            {'texto': 'Foi buscar na India','pontuacao': 10}
    ],
    },
  ];

  void responder(int pontuacao){

    if(temPerguntaSelecionada){
        setState(() {
          PerguntaSelecionada++;
          pontuacaoTotal += pontuacao;

        });

        print(PerguntaSelecionada);
        print(temPerguntaSelecionada);
        print(pontuacaoTotal);
    }
  }

  bool get temPerguntaSelecionada{
    return PerguntaSelecionada < perguntas.length;
  }


  @override
  Widget build(BuildContext context) {


    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Perguntas"),
        ),
        body: temPerguntaSelecionada ?
            Questionario(perguntas: perguntas, PerguntaSelecionada: PerguntaSelecionada, responder: responder)
            : Resultado(),
      ),

    );
  }

}

class PerguntaApp extends StatefulWidget{

    @override
    _PerguntaAppState createState() {
      return _PerguntaAppState();
  }
}