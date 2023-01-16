import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './questao.dart';
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
            ElevatedButton(
                onPressed: responder,
                child: Text("Resposta 1")
            ),
            ElevatedButton(
                onPressed: responder,
                child: Text("Resposta 2")
            ),
            ElevatedButton(
                onPressed: responder,
                child: Text("Resposta 3")
            ),
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