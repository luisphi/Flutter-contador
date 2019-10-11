import 'package:contador/src/pages/contador_page.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //home: HomePage(),
      home: ContadorPage(),
      title: 'Primera Aplicación',
      debugShowCheckedModeBanner: false, //QUITAR LA INSIGNIA DE DEBUG DE LAS APLICACIONES
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
    );
  }
}