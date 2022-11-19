import 'dart:convert';

import 'package:arequipalocal/api/Api.dart';
import 'package:arequipalocal/pantalla/PantallaCategoria.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:shared_preferences/shared_preferences.dart';

class PantallaRegistro extends StatefulWidget {
  @override
  _PantallaRegistroState createState() => _PantallaRegistroState();
}

class _PantallaRegistroState extends State<PantallaRegistro> {
  final GlobalKey<ScaffoldState> _globalKey = new GlobalKey<ScaffoldState>();




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      appBar: AppBar(title:Text("REGISTRO")),
      backgroundColor: Colors.orangeAccent,
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            TextField(
              controller: _nombre,
              style: TextStyle( color: Colors.black),
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.people, color: Colors.white,),
                  hintText: "NOMBRE",
                  hintStyle: TextStyle(
                      color: Colors.white54
                  )
              ),

            ),
            SizedBox( height: 25,),
            TextField(
              controller: _direccion,
              style: TextStyle( color: Colors.black),
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.map, color: Colors.white,),
                  hintText: "DIRECCIÓN",
                  hintStyle: TextStyle(
                      color: Colors.white54
                  )
              ),

            ),
            SizedBox( height: 25,),
            TextField(
              controller: _celular,
              style: TextStyle( color: Colors.black),
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.phone, color: Colors.white,),
                  hintText: "CELULAR",
                  hintStyle: TextStyle(
                      color: Colors.white54
                  )
              ),

            ),
            SizedBox( height: 25,),
            TextField(
              controller: _email,
              style: TextStyle( color: Colors.black),
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email, color: Colors.white,),
                  hintText: "EMAIL",
                  hintStyle: TextStyle(
                      color: Colors.white54
                  )
              ),

            ),
            ....
            SizedBox( height: 25,),
            FlatButton(
              color: Colors.red,
              shape: new RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)
              ),
              child: Padding(
                padding: EdgeInsets.only(top: 8,bottom: 8,left: 10,right: 10),

                child: Text("LOGIN", style: TextStyle(color: Colors.white),),

              ),
              onPressed: (){
                _procesoRegistro();
              },
            ),
          ],
        ),
      ),
    );

  }

  void _procesoRegistro() async{
    if(_nombre.text.isEmpty){
     ....
    }else{
      var data ={
        "name":_nombre.text,
        "direccion":_direccion.text,
        "celular":_celular.text,
        "email":_email.text,
        .....
      };

      ....
      if(body['success']){
       ...
      }else{
        _globalKey.currentState.showSnackBar( SnackBar(
            content: Text(body['message']),  duration: Duration(seconds: 3)
        ),);
      }

    }
  }
}