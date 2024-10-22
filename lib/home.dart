import 'package:flutter/material.dart';

import 'ofertas.dart';
import 'recibos.dart';

class HomePage extends StatefulWidget {
  final String? title;
  const HomePage({super.key, this.title});
  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  int _selectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    Widget page;
    switch (_selectedIndex) {
      case 0:
        page = const ReceiptPage(title: 'PAGINA 0');
        break;
      case 1:
        page = const OffersPage(title: 'PAGINA 1');
        break;
      case 2:
        page = const ReceiptPage(title: 'PAGINA 2');
        break;
      default:
        throw UnimplementedError('no widget for $_selectedIndex');
    }

    return Scaffold(
      body: page,
      bottomNavigationBar: NavigationBar(
          onDestinationSelected: (int index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          selectedIndex: _selectedIndex,
          indicatorColor: const Color.fromARGB(116, 91, 120, 83),
          backgroundColor: const Color.fromARGB(77, 116, 149, 102),
          destinations: const <Widget>[
            NavigationDestination(
              icon: Icon(Icons.campaign),
              label: 'Anuncios',
            ),
            NavigationDestination(
              icon: Icon(Icons.home),
              label: 'Principal',
            ),
            NavigationDestination(
              icon: Icon(Icons.receipt),
              label: 'Recibos',
            ),
          ]),
    );
  }
}
