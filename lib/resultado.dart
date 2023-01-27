import 'package:flutter/material.dart';

//Programado por HeroRickyGames

class Resultado extends StatelessWidget{

  final int pontuacao;

  Resultado(
      this.pontuacao
      );

  String get fraseResultado {
    if( pontuacao < 8){

      return 'Parabens!';

    } else if(pontuacao < 12 ){

      return 'Você foi bem!';

    }else if(pontuacao < 16){

      return 'Impressionante!';

    }else{
      return 'O seu nivel está implacável, parece até o Voliba que eu buildei AP, PUTA QUE PARIU!';
    }
  }

  @override
  Widget build(BuildContext context) {

    return Center(
        child:
        Text(
        fraseResultado,
        style: TextStyle(
        fontSize: 28
    ),
    )
   );

  }
}