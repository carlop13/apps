import 'package:flutter/material.dart';
import 'package:mi_proyecto/ayuda.dart';
import 'package:mi_proyecto/config.dart';
import 'package:mi_proyecto/login.dart';
import 'package:mi_proyecto/pantalla_inicio.dart';
import 'package:mi_proyecto/perfil.dart';

class Principal extends StatelessWidget {
  const Principal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('GameBusters'),
          backgroundColor: PantallaInicio.colorBgAppBar,
          shadowColor: PantallaInicio.colorBgAppBar,
          centerTitle: false,
          titleTextStyle: const TextStyle(
              color: PantallaInicio.colorTxtAppBar, fontSize: 30),
        ),
        backgroundColor: Color.fromARGB(255, 69, 69, 70),
        body: ListView(
          children: <Widget>[
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Bienvenido al catálogo',
                  style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.w500,
                      fontSize: 30),
                )),
            PantallaItemWidget(
              id: 1,
              nombre: "GTA V",
              precio: "\$1222",
              imagen: "images/gta.png",
              backgroundColor: Colors.green,
            ),
            TextButton(
                onPressed: () {}, child: const Text("Agredar al carrito")),
            PantallaItemWidget(
              id: 5,
              nombre: "Mario-Strikers-Battle-League",
              precio: "\$1200",
              imagen: "images/Mario-Strikers-Battle-League.jpg",
              backgroundColor: Colors.red,
            ),
            TextButton(
                onPressed: () {}, child: const Text("Agredar al carrito")),
            PantallaItemWidget(
              id: 3,
              nombre: "Call of Duty",
              precio: "\$1250",
              imagen: "images/cal_of.jpg",
              backgroundColor: Colors.green,
            ),
            TextButton(
                onPressed: () {}, child: const Text("Agredar al carrito")),
            PantallaItemWidget(
              id: 4,
              nombre: "Jump Force",
              precio: "\$123",
              imagen: "images/Jump_Force.jpg",
              backgroundColor: Colors.red,
            ),
            TextButton(
                onPressed: () {}, child: const Text("Agredar al carrito")),
            PantallaItemWidget(
              id: 2,
              nombre: "Halo",
              precio: "\$2342",
              imagen: "images/halo.png",
              backgroundColor: Colors.green,
            ),
            TextButton(
                onPressed: () {}, child: const Text("Agredar al carrito")),
            PantallaItemWidget(
              id: 6,
              nombre: "F1 2022",
              precio: "\$1200",
              imagen: "images/F1_2022.jpg",
              backgroundColor: Colors.blue,
            ),
            TextButton(
                onPressed: () {}, child: const Text("Agredar al carrito")),
            PantallaItemWidget(
              id: 7,
              nombre: "Super Mario Odyssey",
              precio: "\$1200",
              imagen: "images/Super_Mario_Odyssey.jpg",
              backgroundColor: Colors.red,
            ),
            TextButton(
                onPressed: () {}, child: const Text("Agredar al carrito")),
          ],
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
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext) => Principal()));
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
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (BuildContext) => Config()));
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
      ),
    );
  }
}

class PantallaItemWidget extends StatelessWidget {
  final int id;
  final String nombre;
  final String precio;
  final String imagen;
  final Color backgroundColor;

  const PantallaItemWidget({
    required this.id,
    required this.nombre,
    required this.precio,
    required this.imagen,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      height: 250,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Stack(
          children: <Widget>[
            Positioned(
              left: 0,
              right: 0,
              top: 0,
              child: Text(
                nombre,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 10,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Text(
                precio,
                textAlign: TextAlign.right,
                style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 10,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Image.asset(
              imagen,
              alignment: Alignment.center,
            ),
          ],
        ),
      ),
    );
  }
}
