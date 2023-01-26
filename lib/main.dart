import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';
//Programado por HeroRickyGames


main(){
    runApp(PerguntaApp());
}

class _PerguntaAppState extends State<PerguntaApp>{

  var PerguntaSelecionada = 0;

  void responder(){

    setState(() {
      PerguntaSelecionada++;
    });
    print(PerguntaSelecionada);
  }

  @override
  Widget build(BuildContext context) {

    final List<Map <String, Object>> perguntas = [
     {
       'texto': 'Qual é a sua cor favorita?',
       'respostas': ['Preto', 'Vermelho', 'Verde','Branco'],
     },
      {
        'texto': "Qual é o seu animal favorito?",
        'respostas': ['Coelho', 'Cobra', 'Elefante','Leão'],
      },
      {
        'texto': "Porque o Jailson Mendes demorou para entregar a peça para o Kauan para relaxar?",
        'respostas': ['Foi dar a bunda', 'Foi cagar no mato antes de dar', 'Foi buscar na China','Foi buscar na India'],
      },
    ];

    List<Widget> respostas = [];

    for(String textoResp in perguntas[PerguntaSelecionada]['respostas'] as Iterable) {

      respostas.add(Resposta(textoResp, responder));

      print(textoResp);
      
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Perguntas"),
        ),
        body: Column(
          children: [
            Questao(perguntas[PerguntaSelecionada]['texto'] as String),
            ...respostas,
          ],
        ),
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