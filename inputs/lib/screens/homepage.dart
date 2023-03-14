import 'package:flutter/material.dart';
import 'inputs.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Inputs')),
        body: Center(
          child: ListView(children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Text("Inputs"),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: CustomPassword(),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: CustomFecha(),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: CustomNombre(),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: CustomCorreo(),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: CustomTelefono(),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: CustomIput(),
                )
              ],
            ),
          ]),
        ));
  }
}
