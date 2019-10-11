import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _ContadorPageState();
  }
}


class _ContadorPageState extends State<ContadorPage>{

  final _estiloTexto = new TextStyle(fontSize: 22.0);
  int _cuenta = 0;

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
            Text('Total Contador:', style: _estiloTexto),
            Text('$_cuenta', style: TextStyle(fontSize: 18.0))
          ],
        ),
      ),
      floatingActionButton: _crearBotones()
    );
  }

  Widget _crearBotones(){

    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(width: 30.0,),
        FloatingActionButton(child: Icon(Icons.exposure_zero), onPressed: () {setState(() => _cuenta = 0);}),
        Expanded(child: SizedBox()),
        FloatingActionButton(child: Icon(Icons.remove), onPressed: () {setState(() => _cuenta-- );}),
        SizedBox(width: 10.0,),
        FloatingActionButton(child: Icon(Icons.add), onPressed: _sumar)
      ],
    );
  }

  void _sumar(){
    setState(() => _cuenta++);
  }
}