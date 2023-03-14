import 'package:flutter/material.dart';

class CustomPassword extends StatelessWidget {
  final String hint;

  const CustomPassword({super.key, this.hint = ''});

  @override
  Widget build(
    BuildContext context,
  ) {
    return TextField(
      keyboardType: TextInputType.text,
      obscureText: true,
      decoration: InputDecoration(
          border: const OutlineInputBorder(),
          label: const Text('Password'),
          hintText: hint,
          prefixIcon: const Icon(Icons.password),
          suffixIcon: const Icon(Icons.remove_red_eye)),
    );
  }
}

class CustomNombre extends StatelessWidget {
  final String hint;
  final String label;

  const CustomNombre({super.key, this.hint = '', this.label = ''});

  @override
  Widget build(
    BuildContext context,
  ) {
    return TextField(
        keyboardType: TextInputType.name,
        textCapitalization: TextCapitalization.words,
        decoration: InputDecoration(
            border: const OutlineInputBorder(),
            label: Text(label),
            hintText: hint,
            prefixIcon: const Icon(Icons.account_circle)));
  }
}

class CustomFecha extends StatelessWidget {
  final String hint;

  const CustomFecha({super.key, this.hint = ''});

  @override
  Widget build(
    BuildContext context,
  ) {
    return const TextField(
      keyboardType: TextInputType.datetime,
      decoration: InputDecoration(
          border: OutlineInputBorder(),
          label: Text('Fecha'),
          hintText: 'DD/MM/YYY',
          suffixIcon: Icon(Icons.date_range_outlined)),
    );
  }
}

class CustomTelefono extends StatelessWidget {
  const CustomTelefono({super.key});

  @override
  Widget build(
    BuildContext context,
  ) {
    return const TextField(
        keyboardType: TextInputType.phone,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          label: Text('Telefono'),
          hintText: '6462599258',
          prefixIcon: Icon(Icons.phone),
        ));
  }
}

class CustomCorreo extends StatelessWidget {
  const CustomCorreo({super.key});

  @override
  Widget build(
    BuildContext context,
  ) {
    return const TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          label: Text('Correo Electronico'),
          hintText: 'ejemplo@flutter.com',
          prefixIcon: Icon(Icons.email),
        ));
  }
}

class CustomIput extends StatelessWidget {
  final FocusNode? focus;
  final Color? colorIcono;
  final String label;
  final String hint;
  final bool obscure;
  final TextAlign? alineacion;
  final TextCapitalization? capitalizacion;
  final TextStyle? estilo;
  final Icon? icono;
  final Icon? prefix;
  final Icon? suffix;

  const CustomIput(
      {super.key,
      this.focus,
      this.colorIcono,
      this.label = "",
      this.hint = "",
      this.obscure = false,
      this.estilo,
      this.icono,
      this.prefix,
      this.suffix,
      this.alineacion,
      this.capitalizacion});

  @override
  Widget build(BuildContext context) {
    return TextField(
      focusNode: focus,
      decoration: InputDecoration(
          iconColor: colorIcono,
          label: Text(label),
          hintText: hint,
          icon: icono,
          suffixIcon: suffix,
          prefixIcon: prefix),
      obscureText: obscure,
      style: estilo,
    );
  }
}
