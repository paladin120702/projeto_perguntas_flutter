import 'package:flutter/material.dart';

main() => runApp(PerguntaApp());

class PerguntaApp extends StatelessWidget {
  void responder() {
    print("Pergunta Respondida!");
  }

  @override
  Widget build(BuildContext context) {
    const perguntas = [
      "Qual sua cor Favorita ?",
      "Qual seu jogo favorito ?",
      "Qual seu carro dos sonhos ?"
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Pergutas'),
        ),
        body: Column(
          children: [
            Text(perguntas[0]),
            ElevatedButton(onPressed: responder, child: Text("Resposta 1")),
            ElevatedButton(onPressed: null, child: Text("Resposta 2")),
            ElevatedButton(
                onPressed: () {
                  print("Pergunta 3 respondida!!!");
                },
                child: Text("Resposta 3")),
            ElevatedButton(
                onPressed: () => print("Pergunta 4 respondida!!!"),
                child: Text("Resposta 4")),
          ],
        ),
      ),
    );
  }
}
