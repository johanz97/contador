import 'package:flutter/material.dart';

class Contador extends StatefulWidget {
  @override
  createState() => _ContadorState();
}

class _ContadorState extends State<Contador> {
  final _estiloTexto = new TextStyle(fontSize: 25);
  int _count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Titulo'),
          centerTitle: true,
        ),
        body: Center(
            child: Column(
          children: <Widget>[
            Text('Numero de Clicks: ', style: _estiloTexto),
            Text('$_count', style: _estiloTexto)
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        )),
        //floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: crearBotones());
  }

  Widget crearBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SizedBox(width: 30.0),
        FloatingActionButton(
            child: Icon(Icons.exposure_zero),
            onPressed: () {
              setState(() {
                _count = 0;
              });
            }),
        Expanded(child: SizedBox()),
        FloatingActionButton(
            child: Icon(Icons.remove),
            onPressed: () {
              setState(() {
                _count--;
              });
            }),
        SizedBox(width: 5.0),
        FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {
              setState(() {
                _count++;
              });
            }),
      ],
    );
  }
}
