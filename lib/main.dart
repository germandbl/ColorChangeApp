import 'package:color_change_app/color_change_widget.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      //Aqui se agrega el ColorChangeWidget, que es un Scaffold, tambien es un Widget Stateful, y contiene todo el codigo necesario para hacer funcionar el cambio de color
      home: ColorChangeWidget(),
    );
  }
  
}