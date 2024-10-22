import 'dart:math';

import 'package:flutter/material.dart';

class OffersPage extends StatefulWidget {
  const OffersPage({super.key, required this.title});

  final String title;

  @override
  State<OffersPage> createState() => _OffersPageState();
}

class _OffersPageState extends State<OffersPage> {
  int _counter = 0;
  double _sqrtCounter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
      _sqrtCounter = sqrt(_counter);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('${widget.title} BARRA DE PAGINA'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.all(40.0),
              child: Text(
                'Ejemplo de pagina, archivo: ofertas.dart',
              ),
            ),
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const Text(
              'Square root of times:',
            ),
            Text(
              '$_sqrtCounter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
