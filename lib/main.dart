import 'package:flutter/material.dart';

import 'home.dart';
import 'login.dart';
import 'ofertas.dart';

bool userLogged = true;

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    Widget openingPage = const LoginScreen();
    if (userLogged) {
      openingPage = const MainPage();
    }

    return MaterialApp(
      title: 'Cooperativa',
      debugShowCheckedModeBanner: false,
      home: openingPage, //const LandingPage(title: 'Inicio'),
      theme: ThemeData(
          useMaterial3: true,
          colorSchemeSeed: const Color.fromARGB(255, 0, 142, 0)),
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
        title: const Text('BARRA DE APLICACION, ICONO IZQUIRDA LOGIN/LOGOUT'),
        backgroundColor: Colors.teal,
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
