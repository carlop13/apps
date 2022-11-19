import 'package:flutter/material.dart';
import 'package:mi_proyecto/login.dart';
import 'package:mi_proyecto/pantalla_inicio.dart';
import 'package:mi_proyecto/perfil.dart';
import 'package:mi_proyecto/principal.dart';

// ignore_for_file: deprecated_member_use
class Ayuda extends StatefulWidget {
  const Ayuda({super.key});

  static const colorBgAppBar = Colors.black;
  static const colorTxtAppBar = Color.fromARGB(251, 255, 255, 255);
  static const colorShadAppBar = Color(0xffff0000);

  @override
  State<Ayuda> createState() => _HomeScreenhelp();
}

class _HomeScreenhelp extends State<Ayuda> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GameBusters'),
        backgroundColor: PantallaInicio.colorBgAppBar,
        shadowColor: PantallaInicio.colorBgAppBar,
        centerTitle: false,
        titleTextStyle:
            const TextStyle(color: PantallaInicio.colorTxtAppBar, fontSize: 30),
      ),
      body: Container(
        child: Column(children: [
          Text(
            "Hola amiguito, para obtener ayuda llama al siguiente número: 4423535507",
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              letterSpacing: 2,
            ),
            textAlign: TextAlign.center,
          ),
          Text(
            "o",
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              letterSpacing: 2,
            ),
            textAlign: TextAlign.center,
          ),
          Text(
            "al siguiente correo electronico: carlosguadalupelt13@gmail.com",
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              letterSpacing: 2,
            ),
            textAlign: TextAlign.center,
          ),
        ]),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              child: Text(
                'Bienvenido',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 30),
              ),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 10, 10, 10),
              ),
            ),
            ListTile(
              title: const Text('Mi cuenta'),
              leading: const Icon(
                Icons.people,
              ),
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (BuildContext) => Perfil()));
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.shopping_cart,
              ),
              title: const Text('Mi carrito'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.videogame_asset,
              ),
              title: const Text('Catálogo'),
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (BuildContext) => Principal()));
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.help,
              ),
              title: const Text('Ayuda'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.settings,
              ),
              title: const Text('Configuración'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.exit_to_app,
              ),
              title: const Text('Cerrar sesión'),
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (BuildContext) => Login()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
