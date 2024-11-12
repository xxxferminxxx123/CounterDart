
import 'package:apirestfluttelist/Count/counter_fuction_screen.dart';
import 'package:apirestfluttelist/Count/models/CounterProvider.dart';
// import 'package:apirestfluttelist/models/counter_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';



void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CounterProvider()),
      ],
      child: const Myapp(),
    ),
  );
}
class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {

      return  MaterialApp(
        debugShowCheckedModeBanner: false,
        theme:ThemeData(
          useMaterial3: true,
          colorSchemeSeed: Colors.red
        ),
        home: const CounterFuctionScreen(), 
      );
    
  }
}