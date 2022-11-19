import 'package:mi_proyecto/pantalla_inicio.dart';
import 'package:flutter/material.dart';

void main() => runApp(const NavBarApp());

class NavBarApp extends StatelessWidget {
  const NavBarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PantallaInicio(),
    );
  }
}
