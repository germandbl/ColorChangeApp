import 'package:flutter/material.dart';

class ColorChangeWidget extends StatefulWidget {
  const ColorChangeWidget({super.key});

  @override
  State<ColorChangeWidget> createState() => _ColorChangeWidgetState();
}

class _ColorChangeWidgetState extends State<ColorChangeWidget> {

  var numero = 1;
  Color color = Colors.blue; 

  @override
  Widget build(BuildContext context) {
    // Con esto se obtienen las medidas de la pantalla del dispositivo actual
    var size = MediaQuery.of(context).size;

    //Scaffold que cubre toda la pantalla
    return Scaffold(
      //Esto centra el Container central
      body: Center(
        //Esto agrega espacios a los bordes
        child: Padding(
          padding: const EdgeInsets.all(50),
          //Esto permite detectar cuando el usuario toca el container
          child: GestureDetector(
            //El container que cambia de color, se le aplican sus respectivas propiedades
            child: Container(
              color: color,
              width: size.width,
              height: size.height / 2,
              alignment: Alignment.topLeft,
              //Esto centra el texto de en medio del Container
              child: const Center(
                //Texto para indicar que si se toca el container, cambiara de color
                child: Text("Toca para cambiar de color", 
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold
                ))),
            ),
            //Esta funcion es propia de GestureDetector y sirve para detectar cuando el usuario toca
            onTap: () {
              //Esta funcion es del StatefulWidget y es para actualizar el estado cada vez que hayan cambios
              setState(() {
                //El numero se aumenta, si el numero es par, se muestra color rojo, si es impar, color azul
                numero++;
                color = ( numero % 2 == 0 ) ? Colors.red : Colors.blue;
              });
            },
          ),
        ),
      ),
    );
  }
}