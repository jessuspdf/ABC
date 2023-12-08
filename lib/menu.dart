import 'package:Leer_Jugando_ABC/pantalla.dart';
import 'package:flutter/material.dart';
import 'modelos/categoria.dart';

class menu extends StatefulWidget {
  @override
  _menu createState() => _menu();
}

class _menu extends State<menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Menu"),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.pink, Colors.blue],
          ),
        ),
        child: GridView.builder(
          itemCount: Menu.length,
          gridDelegate:
              new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => Pantalla()));
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/" + Menu[index].foto,
                      width: 100,
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
