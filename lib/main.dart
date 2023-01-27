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
  List<String> respostas =[];
  List<Widget> widgets = [];
  final List<Map <String, Object>> perguntas = const [
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

  void responder(){

    if(temPerguntaSelecionada){
        setState(() {
          PerguntaSelecionada++;
        });

        print(PerguntaSelecionada);
        print(temPerguntaSelecionada);
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