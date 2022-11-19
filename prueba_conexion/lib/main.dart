import 'package:flutter/material.dart';
import 'package:provider/Provider.dart';
import 'package:prueba_conexion/provider.dart';

void main() => runApp(const AppState());

class AppState extends StatelessWidget {
  const AppState({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(provides: [
      ChangeNotifierProvider(create: (_) => EcommProvider(), lazy: false)
    ], child: const MyApp());
  }
}
