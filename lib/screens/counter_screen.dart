import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget{
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  //Propiedades
  int counter = 0;

  //Funciones para los botones 

  void increase(){
    counter ++;
    setState(() {});

  }

  void decrease(){
    counter --;
    setState(() {});
  }

  void reset(){
    counter = 0;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    //En el scafols se colocan los widgets 
  const fontSize30 = TextStyle(fontSize: 30);

    return Scaffold (
      appBar: AppBar(
        centerTitle: true,
        title: const Text('CounterScreen'),
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
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton:  CustomFloatingActions(
        increaseFn: increase,
        decreaseFn: decrease,
        resetFn: reset,
      ),
    );
  }
}

class CustomFloatingActions extends StatelessWidget {

  final Function increaseFn; 
  final Function decreaseFn;
  final Function resetFn;


  const CustomFloatingActions({
    Key? key, 
    required this.increaseFn, 
    required this.decreaseFn, 
    required this.resetFn,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      
      children: [
        FloatingActionButton(
          child: const Icon(Icons.exposure_plus_1_outlined),
          onPressed: () => increaseFn(),
        ),

        

        FloatingActionButton(
          child: const Icon(Icons.restart_alt_outlined),
          onPressed: () {
            resetFn();
          }
        ),
        
    
        FloatingActionButton(
          child: const Icon(Icons.exposure_minus_1_outlined),
          onPressed: () => decreaseFn(),
        ),
      ],
    );
  }
}