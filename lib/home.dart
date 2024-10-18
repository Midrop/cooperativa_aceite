import 'package:flutter/material.dart';

import 'ofertas.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cooperativa',
      debugShowCheckedModeBanner: false,
      home: const LandingPage(title: 'Inicio'),
      theme: ThemeData(
          useMaterial3: true,
          colorSchemeSeed: const Color.fromARGB(255, 0, 142, 0)),
    );
  }
}

class LandingPage extends StatefulWidget {
  final String? title;
  const LandingPage({super.key, this.title});
  @override
  State<LandingPage> createState() => LandingPageState();
}

class LandingPageState extends State<LandingPage> {
  int _selectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    // var navBarIndex;

    // Widget buildBody() {
    //   switch (_selectedIndex) {
    //     case 0:
    //       return const Center(child: Text('Home Screen'));
    //     case 1:
    //       return const Center(child: Text('Search Screen'));
    //     case 2:
    //       return const MyHomePage(title: 'QWERTY');
    //     default:
    //       return const Center(child: Text('Home Screen'));
    //   }
    // }

    Widget page;
    switch (_selectedIndex) {
      case 0:
        page = const MyHomePage(title: 'QWERTY');
        return page;
      // break;
      case 1:
        page = const MyHomePage(title: 'QWERTY');
        return page;
      // break;
      default:
        throw UnimplementedError('no widget for $_selectedIndex');
    }

    // return Scaffold(
    //   appBar: AppBar(
    //     title: const Text('INICIO'),
    //     backgroundColor: Colors.teal,
    //   ),
    //   body: SingleChildScrollView(
    //     child: Column(
    //       children: [
    //         // Imagen o logo
    //         Container(
    //           height: 300,
    //           decoration: const BoxDecoration(
    //             image: DecorationImage(
    //               image: AssetImage(
    //                   'assets/landing_image.jpg'), // Añade tu imagen en assets
    //               fit: BoxFit.cover,
    //             ),
    //           ),
    //         ),

    //         const SizedBox(height: 20),

    //         // Título principal
    //         const Padding(
    //           padding: EdgeInsets.all(20.0),
    //           child: Text(
    //             'Bienvenidos',
    //             style: TextStyle(
    //               fontSize: 28,
    //               fontWeight: FontWeight.bold,
    //             ),
    //             textAlign: TextAlign.center,
    //           ),
    //         ),

    //         const SizedBox(height: 20),

    //         // Texto descriptivo
    //         const Padding(
    //           padding: EdgeInsets.symmetric(horizontal: 30.0),
    //           child: Text(
    //             'Aquí puedes encontrar información relevante sobre nuestro producto.',
    //             style: TextStyle(fontSize: 16),
    //             textAlign: TextAlign.center,
    //           ),
    //         ),

    //         const SizedBox(height: 20),

    //         // Botón de llamada a la acción (CTA)
    //         ElevatedButton(
    //           onPressed: () {
    //             // Acción del botón
    //           },
    //           style: ElevatedButton.styleFrom(
    //             padding:
    //                 const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
    //             backgroundColor: Colors.teal,
    //           ),
    //           child: const Text(
    //             'LOGIN',
    //             style: TextStyle(fontSize: 18),
    //           ),
    //         ),

    //         const SizedBox(height: 20),

    //         // Pie de página con enlaces
    //         const Padding(
    //           padding: EdgeInsets.all(20.0),
    //           child: Text(
    //             '© 2024 Cooperativa de aceite.',
    //             style: TextStyle(fontSize: 14, color: Colors.grey),
    //             textAlign: TextAlign.center,
    //           ),
    //         ),
    //         NavigationBar(
    //             onDestinationSelected: (int index) {
    //               setState(() {
    //                 _selectedIndex = index;
    //               });
    //             },
    //             selectedIndex: _selectedIndex,
    //             indicatorColor: const Color.fromARGB(116, 91, 120, 83),
    //             backgroundColor: const Color.fromARGB(77, 116, 149, 102),
    //             // selectedIndex: 1,
    //             destinations: const <Widget>[
    //               NavigationDestination(
    //                 icon: Icon(Icons.campaign),
    //                 label: 'Anuncios',
    //               ),
    //               NavigationDestination(
    //                 icon: Icon(Icons.home),
    //                 label: 'Principal',
    //               ),
    //               NavigationDestination(
    //                 icon: Icon(Icons.receipt),
    //                 label: 'Recibos',
    //               ),
    //             ])
    //       ],
    //     ),
    //   ),
    // );
  }
}
