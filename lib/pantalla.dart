import 'package:flutter/material.dart';
import 'package:Leer_Jugando_ABC/modelos/detalle.dart';

class Pantalla extends StatefulWidget {
  @override
  State<Pantalla> createState() => _PantallaState();
}

class _PantallaState extends State<Pantalla> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView.builder(
            itemCount: Datos.length,
            itemBuilder: (context, index) {
              return (index % 2 == 0)
                  ? _item_left(Datos[index].nombre, Datos[index].foto)
                  : _item_right(Datos[index].nombre, Datos[index].foto);
            }),
      ),
    );
  }
}

Widget _item_left(String texto, String imagen) {
  return Row(
    children: [
      Expanded(flex: 1, child: Text(texto)),
      Expanded(
          flex: 1,
          child: Image.asset(
            "assets/" + imagen,
            width: 200,
          ))
    ],
  );
}

Widget _item_right(String texto, String imagen) {
  return Row(
    children: [
      Expanded(
          flex: 1,
          child: Image.asset(
            "assets/" + imagen,
            width: 200,
          )),
      Expanded(flex: 1, child: Text(texto))
    ],
  );
}
