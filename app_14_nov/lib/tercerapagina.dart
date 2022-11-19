import 'package:app_14_nov/main.dart';
import 'package:flutter/material.dart';

class TerceraPagina extends StatelessWidget {
  const TerceraPagina({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tercera Página"),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 250),
        child: Center(
          child: Column(
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text("Regresar")),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/SegundaPagina");
                  },
                  child: const Text("Segunda Página"))
            ],
          ),
        ),
      ),
    );
  }
}
