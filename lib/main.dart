import 'package:contador_app/screens/counter_screen.dart';
//import 'package:contador_app/screens/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main() {
  
  runApp(const MyApp());

}

//Widgets son clases comunes

class MyApp extends StatelessWidget{
  const MyApp({
    Key? key
    }) : super(key: key);


  

  @override
  Widget build(BuildContext context) {
    //Se debe retornar un widget. Con esto se crea el texto Hola Mundo
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: HomeScreen()
      home: CounterScreen()
    );
  }

}