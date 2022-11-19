import 'package:flutter/material.dart';
import 'package:mi_proyecto/registro.dart';
import 'package:mi_proyecto/login.dart';
// ignore_for_file: deprecated_member_use

class PantallaInicio extends StatefulWidget {
  const PantallaInicio({super.key});

  static const colorBgAppBar = Colors.black;
  static const colorTxtAppBar = Color.fromARGB(251, 255, 255, 255);
  static const colorShadAppBar = Color(0xffff0000);

  @override
  State<PantallaInicio> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<PantallaInicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GameBusters"),
        backgroundColor: PantallaInicio.colorBgAppBar,
        shadowColor: PantallaInicio.colorBgAppBar,
        centerTitle: false,
        titleTextStyle:
            const TextStyle(color: PantallaInicio.colorTxtAppBar, fontSize: 30),
        leading: Padding(
          padding: const EdgeInsets.all(0.0),
          child: Image.asset(
            "images/logojuego.png",
          ),
        ),
      ),
      backgroundColor: Color.fromARGB(255, 69, 69, 70),
      body: Container(
        child: Stack(
          children: <Widget>[
            Positioned(
              child: Align(
                alignment: FractionalOffset.bottomRight,
                child: Container(
                  padding:
                      EdgeInsets.only(right: 15, left: 5, top: 50, bottom: 50),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.only(topLeft: Radius.circular(200))),
                  child: RotatedBox(
                    quarterTurns: 3,
                    child: Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Text(
                        "El mejor lugar para encontrar tus videojuegos",
                        style: TextStyle(
                            color: Colors.black,
                            fontStyle: FontStyle.italic,
                            fontSize: 20,
                            letterSpacing: 5),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Center(
                  child: Image.asset(
                    "images/logojuego.png",
                    width: MediaQuery.of(context).size.width / 2,
                    height: 200,
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 10)),
                Container(
                  child: Text(
                    "Elige una opción",
                    style: TextStyle(
                        color: Color.fromARGB(255, 223, 28, 14),
                        fontStyle: FontStyle.italic,
                        fontSize: 25,
                        letterSpacing: 2),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext) => Login()));
                  },
                  child: Text("Iniciar sesión"),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext) => Registro()));
                  },
                  child: Text("Regístrate"),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
