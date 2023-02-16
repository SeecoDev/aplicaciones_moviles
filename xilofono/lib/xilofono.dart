import 'package:flutter/material.dart';
import 'package:audiofileplayer/audiofileplayer.dart';

class Xilofono extends StatefulWidget {
  const Xilofono({super.key});

  @override
  State<Xilofono> createState() => _XilofonoState();
}

class _XilofonoState extends State<Xilofono> {
  Audio note1 = Audio.load('assets/sounds/note1.wav');
  Audio note2 = Audio.load('assets/sounds/note2.wav');
  Audio note3 = Audio.load('assets/sounds/note3.wav');
  Audio note4 = Audio.load('assets/sounds/note4.wav');
  Audio note5 = Audio.load('assets/sounds/note5.wav');
  Audio note6 = Audio.load('assets/sounds/note6.wav');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        nota(note1, Colors.red),
        nota(note2, Colors.blue),
        nota(note3, Colors.yellow),
        nota(note4, Colors.orange),
        nota(note5, Colors.purple),
        nota(note6, Colors.pink),
      ],
    ));
  }

  TextButton nota(Audio nota, Color color) {
    return TextButton(
        onPressed: () {
          nota.play();
        },
        child: Expanded(
          child: Container(
            color: color,
            height: 100,
            width: 200,
          ),
        ));
  }
}
