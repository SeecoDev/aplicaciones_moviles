import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  int numeroPregunta = 0;
  String pregunta = 'ESTA ES LA PREGUNTA VERDADERA';
  List<Icon> aciertosErrores = [];

  List<String> preguntas = [
    'Los globulos rojos viven 4 meses?',
    'El cuerpo humano tiene 306 huesos?',
    'La cobalamina es una vitamina',
  ];
  List<bool> respuesta = [true, false, true];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          //Pregunta
          Expanded(
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Center(
                child: Text(
                  preguntas[numeroPregunta],
                  style: const TextStyle(fontSize: 48),
                ),
              ),
            ),
          ),
          //Botones
          Expanded(
            //Botones
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                      onPressed: () {
                        setState(() {
                          comprobar(true);
                        });
                      },
                      child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.green,
                          ),
                          width: 150,
                          height: 100,
                          alignment: Alignment.center,
                          child: const Text(
                            'Verdadero',
                            style: TextStyle(color: Colors.white, fontSize: 30),
                          ))),
                  TextButton(
                      onPressed: () {
                        setState(() {
                          comprobar(false);
                        });
                      },
                      child: Container(
                          width: 150,
                          height: 100,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.red,
                          ),
                          child: const Text(
                            'Falso',
                            style: TextStyle(color: Colors.white, fontSize: 30),
                          )))
                ],
              ),
            ),
          ),
          //Iconos
          Row(
            children: aciertosErrores,
          )
        ],
      ),
    );
  }

  void comprobar(bool usuario) {
    if (respuesta.length - 1 != numeroPregunta) {
      if (respuesta[numeroPregunta] == usuario) {
        aciertosErrores.add(const Icon(
          Icons.done,
          color: Colors.green,
          size: 40,
        ));
      } else {
        aciertosErrores
            .add(const Icon(Icons.close, color: Colors.red, size: 40));
      }
      numeroPregunta++;
    } else {
      numeroPregunta = 0;
    }
  }
}
