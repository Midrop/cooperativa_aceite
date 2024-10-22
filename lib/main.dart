import 'package:flutter/material.dart';

import 'home.dart';
import 'login.dart';
import 'ofertas.dart';

bool userLogged = false;

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    Widget openingPage = const LoginPage();
    if (userLogged) {
      openingPage = const MainPage();
    }

    return MaterialApp(
      title: 'Cooperativa',
      debugShowCheckedModeBanner: false,
      home: openingPage, //const LandingPage(title: 'Inicio'),
      theme: ThemeData(
          useMaterial3: true,
          colorSchemeSeed: const Color.fromARGB(226, 0, 133, 0)),
    );
  }
}

class MainPage extends StatefulWidget {
  final String? title;
  const MainPage({super.key, this.title});
  @override
  State<MainPage> createState() => MainPageState();
}

class MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    // bool _isVisible = userLogged;

    Widget page;
    switch (_selectedIndex) {
      case 0:
        page = const MyHomePage(title: 'PAGINA 0');
        break;
      case 1:
        page = const HomePage(title: 'PAGINA 1');
        break;
      case 2:
        page = const MyHomePage(title: 'PAGINA 2');
        break;
      default:
        throw UnimplementedError('no widget for $_selectedIndex');
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('BARRA DE APLICACION'),
        backgroundColor: const Color.fromARGB(142, 56, 151, 43),
        actions: [
          Visibility(
            visible: userLogged,
            child: IconButton(
                onPressed: () {
                  userLogged = false;
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginPage()),
                    (Route<dynamic> route) => false,
                  );
                },
                icon: const Icon(Icons.logout)),
          )
        ],
      ),
      body: page,
      bottomNavigationBar: Visibility(
        visible: userLogged,
        child: NavigationBar(
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
      ),
    );
  }
}
