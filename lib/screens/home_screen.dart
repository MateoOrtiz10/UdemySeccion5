import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
  const HomeScreen({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    //En el scafols se colocan los widgets 
  const fontSize30 = TextStyle(fontSize: 30);
  int counter = 10;

    return Scaffold (
      appBar: AppBar(
        centerTitle: true,
        title: const Text('HomeScreen'),
        elevation: 1.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,        
          children: <Widget> [ //Ayuda a saber solo lo que se tendraá
            const Text('Número de Clicks', style: fontSize30),
            Text('$counter', style: fontSize30),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () { 
            counter++;
            print('Hola Mundo $counter');            
            },
      ),
    );
  }

}