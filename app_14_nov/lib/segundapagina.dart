import 'package:app_14_nov/main.dart';
import 'package:flutter/material.dart';

class SegundaPagina extends StatelessWidget {
  const SegundaPagina({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Segunda página"),
      ),
      body: Column(children: [
        ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text("Regresar")),
        ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, "/TerceraPagina");
            },
            child: const Text("Regresar a tercer Página")),
      ]),
    );
  }
}
