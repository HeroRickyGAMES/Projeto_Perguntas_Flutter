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

    final perguntas = [
      "Qual é a sua cor favorita?",
      "Qual é o seu animal favorito?",
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Perguntas"),
        ),
        body: Column(
          children: [
            Questao(perguntas[PerguntaSelecionada]),
            Resposta("Resposta 1", responder),
            Resposta("Resposta 2", responder),
            Resposta("Resposta 3", responder)
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