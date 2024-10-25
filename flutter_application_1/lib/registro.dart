import 'package:flutter/material.dart';
import 'package:flutter_application_1/inicio.dart';

class VentanaRegistro extends StatefulWidget {
  @override
  _VentanaRegistroState createState() => _VentanaRegistroState();
}

class _VentanaRegistroState extends State<VentanaRegistro> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _nombre = TextEditingController();
  final _apellidos = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registro de Usuario'),
        backgroundColor: const Color.fromARGB(255, 190, 228, 164),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Center(
            child: Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 190, 228, 164),
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                children: <Widget>[
                  Column(
                    children: [
                      TextFormField(
                        controller: _nombre,
                        decoration: InputDecoration(labelText: 'Nombre'),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Por favor ingrese su nombre';
                          }
                          return null;
                        },
                      ),
                      TextFormField(
                        controller: _apellidos,
                        decoration: InputDecoration(labelText: 'Apellidos'),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Por favor ingrese sus apellidos';
                          }
                          return null;
                        },
                      ),
                    ],
                  ),
                  TextFormField(
                    controller: _emailController,
                    decoration: InputDecoration(labelText: 'Email'),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Por favor ingrese su email';
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    controller: _passwordController,
                    decoration: InputDecoration(labelText: 'Contraseña'),
                    obscureText: true,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Por favor ingrese su contraseña';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        _register();
                      }
                    },
                    child: Text('Registrar'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _register() {
    final email = _emailController.text;
    final password = _passwordController.text;
    final nombre = _nombre.text;
    final apellido = _apellidos.text;

    // Mostrar un mensaje de éxito
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Registro Exitoso'),
        content: Text('Usuario registrado con email: $email'),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => MyHomePage()),
                (Route<dynamic> route) => false,
              );
            },
            child: Text('OK'),
          ),
        ],
      ),
    );
  }
}
