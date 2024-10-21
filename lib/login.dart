import 'package:cooperativa_aceite/main.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';

//Future<void> main() async {
// WidgetsFlutterBinding.ensureInitialized();
// await Firebase.initializeApp();
// await FirebaseAuth.instance.useAuthEmulator('localhost', 9099);
//await FirebaseAuth.instance.useAuthEmulator('my-url.firebaseapp.com', 9099);
//   await FirebaseAuth.instance.customAuthDomain!('my-url.firebaseapp.com');
//runApp(MyApp());
//}

// The function can't be unconditionally invoked because it can be 'null'.
// Try adding a null check ('!')ç

import 'package:flutter/material.dart';
import 'home.dart'; // Importamos la página principal desde home.dart

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  // Simula el proceso de login
  void _login() {
    if (_formKey.currentState!.validate()) {
      // Navegamos a MyHomePage cuando el login es exitoso
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) => const LandingPage(title: 'Home Page')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              const Color(0xFFE2E6D6), // Verde oliva claro
              const Color(0xFFC6D9B9), // Verde oliva medio
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(24.0), // Espaciado más amplio
          child: Center(
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12), // Bordes redondeados
              ),
              elevation: 4, // Sombra para darle profundidad
              child: Padding(
                padding:
                    const EdgeInsets.all(24.0), // Espaciado interno de la Card
                child: Form(
                  key: _formKey,
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Logo o imagen de la cooperativa
                        Image.asset(
                          '../assets/logo.png', // Asegúrate de tener un logo en esta ruta
                          height: 100,
                        ),
                        const SizedBox(
                            height: 20), // Espaciado entre el logo y los campos

                        // Campo para el email
                        TextFormField(
                          controller: _emailController,
                          decoration: InputDecoration(
                            labelText: 'Email',
                            labelStyle: const TextStyle(color: Colors.grey),
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.circular(8), // Bordes más suaves
                              borderSide: const BorderSide(color: Colors.grey),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.circular(8), // Bordes más suaves
                              borderSide: BorderSide(color: Colors.green[500]!),
                            ),
                          ),
                          keyboardType: TextInputType.emailAddress,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Por favor, ingrese su correo electrónico';
                            } else if (!RegExp(r'^[^@]+@[^@]+\.[^@]+')
                                .hasMatch(value)) {
                              return 'Por favor, ingrese un correo electrónico válido';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 20), // Espaciado entre campos

                        // Campo para la contraseña
                        TextFormField(
                          controller: _passwordController,
                          decoration: InputDecoration(
                            labelText: 'Contraseña',
                            labelStyle: const TextStyle(color: Colors.grey),
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.circular(8), // Bordes más suaves
                              borderSide: const BorderSide(color: Colors.grey),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.circular(8), // Bordes más suaves
                              borderSide: BorderSide(color: Colors.green[500]!),
                            ),
                          ),
                          obscureText: true,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Por favor, ingrese su contraseña';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 30), // Espaciado entre campos

                        // Botón para iniciar sesión
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black, // Color negro
                            padding: const EdgeInsets.symmetric(
                                vertical: 18, horizontal: 30), // Mayor padding
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.circular(8), // Bordes más suaves
                            ),
                            elevation: 0, // Sin sombra para un look más limpio
                          ),
                          onPressed: _login,
                          child: const Text(
                            'Iniciar Sesión',
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.white), // Texto en blanco
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
