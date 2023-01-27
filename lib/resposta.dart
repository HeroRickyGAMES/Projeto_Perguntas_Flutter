import 'package:flutter/material.dart';

//Programado por HeroRickyGames

class Resposta extends StatelessWidget{

  final String texto;

  final void Function() quandoSelecionado;

  Resposta(this.texto, this.quandoSelecionado);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        child: Text(texto),
        onPressed: quandoSelecionado,
      ),
    );
  }
}