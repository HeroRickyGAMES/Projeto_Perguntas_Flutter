import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//Programado por HeroRickyGames


main(){
    runApp(PerguntaApp());
}

class PerguntaApp extends StatelessWidget{

  final perguntas = [
    "Qual é a sua cor favorita?",
    "Qual é o seu animal favorito?",
  ];

  Widget build(BuildContext context) {
  return MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text("Perguntas"),
      ),
      body: Column(
        children: [
          Text(perguntas[0]),
          ElevatedButton(
              onPressed: null,
              child: Text("Resposta 1")
          ),
          ElevatedButton(
              onPressed: null,
              child: Text("Resposta 2")
          ),
          ElevatedButton(
              onPressed: null,
              child: Text("Resposta 3")
          ),
        ],
      ),
    ),
    
  );
  }
}