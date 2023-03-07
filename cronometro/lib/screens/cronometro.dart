import 'dart:async';
import 'package:flutter/material.dart';

class Cronometro extends StatefulWidget {
  const Cronometro({super.key});

  @override
  State<Cronometro> createState() => _CronometroState();
}

class _CronometroState extends State<Cronometro> {
  int mili = 0;
  late Timer timer;
  bool corriendo = false;
  bool ultima = true;
  List vueltasTotal = [];
  List vueltasTiempo = [];
  String horas = '00';
  String minutos = '00';
  String segundos = '00';
  String milisegundos = '00';
  String ultimaVuelta = '00';
  final vuelta = Stopwatch();

  TextStyle vueltasText = const TextStyle(
      color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold);

  void iniciarCronometro() {
    if (!corriendo) {
      vuelta.start();
      timer = Timer.periodic(const Duration(milliseconds: 30), (timer) {
        mili += 30;
        setState(() {});
        corriendo = true;
      });
    }
  }

  void resetCronometro() {
    timer.cancel();
    vuelta.stop();
    vuelta.reset();
    corriendo = false;
    mili = 0;
    vueltasTotal = [];
    vueltasTiempo = [];
    setState(() {});
  }

  void detenerCronometro() {
    timer.cancel();
    vuelta.stop();
    corriendo = false;
  }

  void addVueltas() {
    if (corriendo) {
      String vueltaTiempo = formatoTiempo();
      setState(() {
        vueltasTotal.add(vueltaTiempo);
        vuelta.stop();
        vueltasTiempo.add(vuelta.elapsedMilliseconds);
        vuelta.reset();
        vuelta.start();
      });
    }
  }

  String formatoTiempo() {
    Duration duracion = Duration(milliseconds: mili);
    String dosValores(int valor) {
      return valor >= 10 ? "$valor" : "0$valor";
    }

    horas = dosValores(duracion.inHours);
    minutos = dosValores(duracion.inMinutes.remainder(60));
    segundos = dosValores(duracion.inSeconds.remainder(60));
    milisegundos =
        dosValores(duracion.inMilliseconds.remainder(1000)).substring(0, 2);
    return "$horas:$minutos:$segundos:$milisegundos";
  }

  String formatoTiempoLista(int tiempoVuelta) {
    Duration duracion = Duration(milliseconds: tiempoVuelta);
    String dosValores(int valor) {
      return valor >= 10 ? "$valor" : "0$valor";
    }

    horas = dosValores(duracion.inHours);
    minutos = dosValores(duracion.inMinutes.remainder(60));
    segundos = dosValores(duracion.inSeconds.remainder(60));
    milisegundos =
        dosValores(duracion.inMilliseconds.remainder(1000)).substring(0, 2);
    return "$horas:$minutos:$segundos:$milisegundos";
  }

  String ultimoVuelta(index) {
    return vueltasTotal[index];
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          formatoTiempo(),
          style: const TextStyle(fontSize: 50),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextButton(
                onPressed: iniciarCronometro, child: const Icon(Icons.timer)),
            TextButton(
                onPressed: detenerCronometro, child: const Icon(Icons.stop)),
            TextButton(onPressed: addVueltas, child: const Icon(Icons.flag)),
            TextButton(
                onPressed: resetCronometro,
                child: const Icon(Icons.restart_alt))
          ],
        ),
        const Divider(
          thickness: 2,
          indent: 40,
          endIndent: 40,
        ),
        const SizedBox(
          height: 20,
        ),
        const Text(
          "Vueltas",
          style: TextStyle(
              fontSize: 20, color: Colors.blue, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 20,
        ),
        Flexible(
          child: Container(
            height: 400,
            width: 350,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.blue,
            ),
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: vueltasTotal.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("Vuelta ${index + 1}", style: vueltasText),
                          Text(formatoTiempoLista(vueltasTiempo[index]),
                              style: vueltasText),
                          Text(ultimoVuelta(index), style: vueltasText),
                        ],
                      ),
                      const Divider(
                        thickness: 2,
                        indent: 40,
                        endIndent: 40,
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        )
      ],
    );
  }
}
