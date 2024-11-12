import 'package:apirestfluttelist/Count/components/Custom_Button.dart';
import 'package:apirestfluttelist/Count/models/CounterProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CounterFuctionScreen extends StatefulWidget {
  const CounterFuctionScreen({super.key});

  @override
  State<CounterFuctionScreen> createState() => _CounterFuctionScreenState();
}

class _CounterFuctionScreenState extends State<CounterFuctionScreen> {

  @override
  Widget build(BuildContext context) {
    final counterProvider = Provider.of<CounterProvider>(context);

    return Scaffold(
        appBar: AppBar(
          title: const Text('Contador Principal'),
          actions: [
            IconButton(
              icon: const Icon(Icons.refresh),
              onPressed: () {
                counterProvider.reset();
              },
            ),
            IconButton(
              icon: const Icon(Icons.mode_edit_sharp),
              onPressed: () {},
            )
          ],
        ),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Contador',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w200),
                  ),
                  Text(
                    '${counterProvider.clickCounter}',
                    style: const TextStyle(fontSize: 40, fontWeight: FontWeight.w200),
                  )
                ])),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomButton(
              icon: Icons.plus_one,
              onPressed: () {
                counterProvider.increment();
              },
            ),
            const SizedBox(height: 10),
            CustomButton(
              icon: Icons.exposure_minus_1_outlined,
              onPressed: () {
                counterProvider.decrement();
              },
            ),
            const SizedBox(height: 10),
            CustomButton(
              icon: Icons.call_missed_outgoing_rounded,
              onPressed: () {
                counterProvider.square();
              },
            ),
          ],
        ));
  }
}


