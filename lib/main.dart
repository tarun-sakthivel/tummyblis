import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:tummyblis/Screens/Homepage.dart';
import 'package:tummyblis/Screens/Homescreen.dart';
import 'package:tummyblis/Screens/LoginPage.dart';
import 'package:tummyblis/Screens/vendor_homescreen.dart';
import 'package:tummyblis/Screens/welcomepage.dart';
import 'package:tummyblis/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(debugShowCheckedModeBanner: false, home: Login());
  }
}
