import 'package:flutter/material.dart';
import './questionario.dart';
import './resultado.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  var _notaTotal = 0;
  final List<Map<String, Object>> _perguntas = const [
    {
      'texto': 'Qual sua cor favorita?',
      'respostas': [
        {'texto': 'Preto', 'nota': 10},
        {'texto': 'Branco', 'nota': 9},
        {'texto': 'Azul', 'nota': 7},
        {'texto': 'Verde', 'nota': 1},
      ],
    },
    {
      'texto': 'Qual seu animal favorito?',
      'respostas': [
        {'texto': 'Cobra', 'nota': 9},
        {'texto': 'Gato', 'nota': 10},
        {'texto': 'Cachorro', 'nota': 6},
        {'texto': 'Leão', 'nota': 1},
      ],
    },
    {
      'texto': 'Qual seu instrutor favorito?',
      'respostas': [
        {'texto': 'Juninho', 'nota': 7},
        {'texto': 'Renato', 'nota': 3},
        {'texto': 'Carlos', 'nota': 10},
        {'texto': 'Dudu', 'nota': 1},
      ],
    },
  ];

  bool get temPergunta {
    return _perguntaSelecionada < _perguntas.length;
  }

  void _responder(int nota) {
    if (temPergunta) {
      setState(() {
        _perguntaSelecionada++;
        _notaTotal += nota;
      });
    }
  }

  void _reiniciarQuestionario() {
    setState(() {
      _perguntaSelecionada = 0;
      _notaTotal = 0;
    });
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
            : Resultado(_notaTotal, _reiniciarQuestionario),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
