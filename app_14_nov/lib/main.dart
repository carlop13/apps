import 'package:app_14_nov/segundapagina.dart';
import 'package:app_14_nov/tercerapagina.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      // home: PrimeraPagina(),
      initialRoute: "/",
      routes: {
        "/": (context) => const PrimeraPagina(),
        "/SegundaPagina": (context) => const SegundaPagina(),
        "/TerceraPagina": (context) => const TerceraPagina()
      },
    );
  }
}

class PrimeraPagina extends StatelessWidget {
  const PrimeraPagina({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Primera página")),
      body: Container(
        padding: EdgeInsets.only(top: 250),
        child: Center(
          child: Column(
            children: [
              ElevatedButton(
                  onPressed: () {
                    /* Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext) => SegundaPagina()));*/
                    Navigator.pushNamed(context, "/SegundaPagina");
                  },
                  child: const Text("Ir a página 2")),
              ElevatedButton(
                  onPressed: () {
                    /* Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext) => SegundaPagina()));*/
                    Navigator.pushNamed(context, "/TerceraPagina");
                  },
                  child: const Text("Ir a página 3"))
            ],
          ),
        ),
      ),
    );
  }
}
