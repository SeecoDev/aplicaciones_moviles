import 'package:flutter/material.dart';
import 'package:balance/widgets/balance_wt/constants.dart';

class NumKeyboard extends StatefulWidget {
  const NumKeyboard({super.key});

  @override
  State<NumKeyboard> createState() => _NumKeyboardState();
}

class _NumKeyboardState extends State<NumKeyboard> {
  String importe = '0.00';

  bool comprobarValor(String valor) {
    RegExp reg = RegExp(r'^(?=\D*(?:\d\D*){1,12}$)\d+(?:\.\d{1,4})?$');
    if (reg.hasMatch(valor)) {
      return true;
    }
    return false;
  }

  String formatearImporte(String valor, String concat) {
    if (valor == '0.00') valor = '';
    if (valor.startsWith('0') & !valor.contains('.')) {
      valor = valor.substring(1, valor.length);
    }
    if (valor.startsWith('.')) {
      valor = '0' + valor;
    }
    if (valor.contains('.')) {
      if (comprobarValor(valor + concat)) {
        valor += concat;
      }
    } else {
      valor += concat;
    }
    return valor;
  }

  @override
  Widget build(BuildContext context) {
    String Function(Match) mathFunc;
    RegExp reg = RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))');
    mathFunc = (Match match) => '${match[1]},';

    return GestureDetector(
      onTap: () => _numPad(),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const Text('Cantidad Ingresada:'),
            Text(
              '\$ ${importe.replaceAllMapped(reg, mathFunc)}',
              style: const TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.w500),
            )
          ],
        ),
      ),
    );
  }

  _numPad() {
    _num(String _text, double _height) {
      return GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () {
          setState(() {
            importe = formatearImporte(importe, _text);
          });
        },
        child: SizedBox(
          height: _height,
          child: Center(
            child: Text(
              _text,
              style: const TextStyle(fontSize: 30, color: Colors.grey),
            ),
          ),
        ),
      );
    }

    showModalBottomSheet(
        // isDismissible: true,
        enableDrag: false,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        shape: const RoundedRectangleBorder(
            borderRadius:
                BorderRadiusDirectional.vertical(top: Radius.circular(30))),
        context: context,
        builder: (BuildContext context) {
          return WillPopScope(
            onWillPop: () async =>
                false, // OnWillPopScope quita el poder de hacer un pop con el notch fisico
            child: SizedBox(
              height: 800,
              child: LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
                  var _height = constraints.biggest.height / 5;
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Table(
                        border: TableBorder.symmetric(
                            inside: const BorderSide(
                          color: Colors.grey,
                          width: 0.5,
                        )),
                        children: [
                          TableRow(children: [
                            _num('1', _height),
                            _num('2', _height),
                            _num('3', _height)
                          ]),
                          TableRow(children: [
                            _num('4', _height),
                            _num('5', _height),
                            _num('6', _height)
                          ]),
                          TableRow(children: [
                            _num('7', _height),
                            _num('8', _height),
                            _num('9', _height)
                          ]),
                          TableRow(children: [
                            _num('.', _height),
                            _num('0', _height),
                            GestureDetector(
                              onLongPress: () {
                                setState(() {
                                  if (importe.contains('.')) {
                                    importe = importe.substring(
                                        0, importe.indexOf('.'));
                                  } else {
                                    importe = '0.00';
                                  }
                                });
                              },
                              onTap: () {
                                setState(() {
                                  if (importe.isNotEmpty) {
                                    importe = importe.substring(
                                        0, importe.length - 1);
                                  }
                                });
                              },
                              behavior: HitTestBehavior.opaque,
                              child: SizedBox(
                                height: _height,
                                child: const Icon(
                                  Icons.backspace,
                                  color: Colors.grey,
                                ),
                              ),
                            )
                          ]),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  if (importe.isEmpty) importe = '0.00';
                                  Navigator.pop(context);
                                });
                              },
                              icon: Icon(
                                Icons.check_circle,
                                color: Colors.green,
                                size: _height / 1.5,
                              )),
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  importe = '0.00';
                                  Navigator.pop(context);
                                });
                              },
                              icon: Icon(
                                Icons.cancel,
                                color: Colors.red,
                                size: _height / 1.5,
                              ))
                        ],
                      )
                    ],
                  );
                },
              ),
            ),
          );
        });
  }
}
