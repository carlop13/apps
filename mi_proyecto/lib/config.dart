import 'package:flutter/material.dart';
import 'package:mi_proyecto/ayuda.dart';
import 'package:mi_proyecto/login.dart';
import 'package:mi_proyecto/pantalla_inicio.dart';
import 'package:mi_proyecto/perfil.dart';
import 'package:mi_proyecto/principal.dart';

class Config extends StatelessWidget {
  const Config({Key? key}) : super(key: key);

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
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Center(
                    child: CircleAvatar(
                      backgroundImage: AssetImage('images/halo.png'),
                      radius: 40.0,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Nombre',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    '098765432',
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'user@gmail.com',
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Divider(),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const Text(
                        'Address:',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(16.0, 0, 16, 16),
                        child: Column(
                          children: const <Widget>[
                            Text('Address Line 1'),
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const <Widget>[
                      Text('Country:',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      Padding(
                        padding: EdgeInsets.fromLTRB(16.0, 0, 16, 16),
                        child: Text('Country Name'),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
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
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (BuildContext) => Ayuda()));
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
