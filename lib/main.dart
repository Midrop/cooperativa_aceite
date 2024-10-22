import 'package:flutter/material.dart';

import 'home.dart';
import 'login.dart';
import 'profile.dart';

bool userLogged = true;

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
      home: openingPage,
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
  Widget page = const HomePage(title: 'PAGINA 1');
  bool atProfilePage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BARRA DE APLICACION'),
        backgroundColor: const Color.fromARGB(142, 56, 151, 43),
        actions: [
          Visibility(
            visible: atProfilePage,
            child: IconButton(
              iconSize: 32,
              onPressed: () {
                setState(() {
                  atProfilePage = false;
                  page = const HomePage();
                });
              },
              icon: const Icon(Icons.arrow_back),
            ),
          ),
          Visibility(
            visible: userLogged && !atProfilePage,
            child: IconButton(
                iconSize: 32,
                onPressed: () {
                  setState(() {
                    atProfilePage = true;
                    page = const ProfilePage();
                  });
                },
                icon: const Icon(Icons.account_circle)),
          ),
          Visibility(
            visible: userLogged,
            child: IconButton(
                iconSize: 32,
                onPressed: () {
                  userLogged = false;
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginPage()),
                    (Route<dynamic> route) => false,
                  );
                },
                icon: const Icon(Icons.logout)),
          ),
        ],
      ),
      body: page,
    );
  }
}
