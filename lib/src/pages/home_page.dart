//Las páginas también con widgets

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  final estiloTexto = new TextStyle(fontSize: 22.0);
  final int cuenta = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Título'),  
        elevation: 100.0,      
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Total Contador:', style: estiloTexto),
            Text('$cuenta', style: TextStyle(fontSize: 18.0))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),        
        onPressed: (){
          print('Hola 1');
        },
      ),
      //floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat //Cambio de posición del botón
    );
  }
}