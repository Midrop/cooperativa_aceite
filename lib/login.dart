import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await FirebaseAuth.instance.useAuthEmulator('localhost', 9099);
  await FirebaseAuth.instance.useAuthEmulator('my-url.firebaseapp.com', 9099);
//   await FirebaseAuth.instance.customAuthDomain!('my-url.firebaseapp.com');
//runApp(MyApp());
}


// The function can't be unconditionally invoked because it can be 'null'.
// Try adding a null check ('!')