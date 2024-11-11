import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {

  int clickCounter=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter titlle'),
      ),
        body:  Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Data',style: TextStyle(fontSize:20,fontWeight: FontWeight.w200),), 
                  Text( ohl(clickCounter),style: const TextStyle( fontSize:15,fontWeight: FontWeight.w200),)
          ]
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          clickCounter++;
          setState(() {
          });
        },
        child: const Icon(Icons.plus_one),
      )

      
    );
  }
  String ohl(clickCounter){
     return clickCounter!=1 ? 'DIFERETNES DE 1':'$clickCounter' ;
  }
}
