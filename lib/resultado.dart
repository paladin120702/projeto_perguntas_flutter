import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int nota;
  final void Function() quandoReiniciarQuestionario;

  Resultado(this.nota, this.quandoReiniciarQuestionario);

  String get fraseResultado {
    if (nota < 8) {
      return 'Parabéns!';
    } else if (nota < 12) {
      return 'Você é bom';
    } else if (nota < 21) {
      return 'Impressionante';
    } else {
      return 'Nível Jedi!!!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            fraseResultado,
            style: TextStyle(fontSize: 28),
          ),
        ),
        FloatingActionButton(
          onPressed: quandoReiniciarQuestionario,
          child: Text(
            'Reiniciar?',
            style: TextStyle(fontSize: 10),
          ),
          foregroundColor: Colors.blue,
        )
      ],
    );
  }
}
