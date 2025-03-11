import 'package:flutter/material.dart';
import './questionario.dart';
import './resultado.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  final List<Map<String, Object>> _perguntas = const [
    {
      'texto': 'Qual sua cor favorita?',
      'respostas': ['Preto', 'Branco', 'Azul', 'Verde'],
    },
    {
      'texto': 'Qual seu animal favorito?',
      'respostas': ['Cobra', 'Gato', 'Cachorro', 'Leão'],
    },
    {
      'texto': 'Qual seu instrutor favorito?',
      'respostas': ['Juninho', 'Renato', 'Carlos', 'Dudu'],
    }
  ];

  bool get temPergunta {
    return _perguntaSelecionada < _perguntas.length;
  }

  void _responder() {
    if (temPergunta) {
      setState(() {
        _perguntaSelecionada++;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Perguntas'),
          ),
          body: temPergunta
              ? Questionario(
                  perguntas: _perguntas,
                  perguntaSelecionada: _perguntaSelecionada,
                  responder: _responder)
              : Resultado('Parabéns!!!')),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
