import 'package:flutter/material.dart';

//Programado por HeroRickyGames

class Resultado extends StatelessWidget{

  final int pontuacao;
  final void Function() quandoreiniciarQuestionario;

  Resultado(
      this.pontuacao,
      this.quandoreiniciarQuestionario
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

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                  child:
                  Text(
                  fraseResultado,
                  style: TextStyle(
                  fontSize: 28
              ),
              )
         ),
              TextButton(
                  onPressed: quandoreiniciarQuestionario,
                  child: Text('Reiniciar?',
                    style: TextStyle(
                      fontSize: 18,

                    ),
                  ),
              )
      ],
    );

  }
}