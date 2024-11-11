import 'package:apirestfluttelist/Count/components/Custom_Button.dart';
import 'package:apirestfluttelist/Count/models/contador_dto.dart';
import 'package:flutter/material.dart';

class CounterFuctionScreen extends StatefulWidget {
  const CounterFuctionScreen({super.key});

  @override
  State<CounterFuctionScreen> createState() => _CounterFuctionScreenState();
}

class _CounterFuctionScreenState extends State<CounterFuctionScreen> {
  @override
  Widget build(BuildContext context) {
    CustomButton(
      icon: Icons.menu_open,
      onPressed: () {
        if (!validarValoresMenosCeros()) return;
        clickCounter--;
        setState(() {});
      },
    );
    return Scaffold(
        appBar: AppBar(
          title: const Text(tituloPrincipal),
          actions: [
            IconButton(
              icon: const Icon(Icons.refresh),
              onPressed: () {
                setState(() {
                  clickCounter = 0;
                });
              },
            ),
            IconButton(
              icon: const Icon(Icons.mode_edit_sharp),
              onPressed: () {},
            )
          ],
        ),
        body: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const Text(
            tituloWidget,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w200),
          ),
          Text(
            '$clickCounter',
            style: const TextStyle(fontSize: 40, fontWeight: FontWeight.w200),
          )
        ])),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomButton(
              icon: Icons.plus_one,
              onPressed: () {
                clickCounter++;
                setState(() {});
              },
            ),
            const SizedBox(height: 10),
            CustomButton(
              icon: Icons.exposure_minus_1_outlined,
              onPressed: () {
                if (!validarValoresMenosCeros()) return;
                clickCounter--;
                setState(() {});
              },
            ),
            const SizedBox(height: 10),
            CustomButton(
              icon: Icons.call_missed_outgoing_rounded,
              onPressed: () {
                clickCounter=clickCounter*clickCounter;
                setState(() {});
              },
            ),
          ],
        ));
  }
}

bool validarValoresMenosCeros() {
  return clickCounter > 0;
}
