import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:tasklist/splash.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //initializeDateFormatting('tr');
    return const MaterialApp(
      //debug mode off
      debugShowCheckedModeBanner: false,
      title: "Task List",
      home: Splash(),
    );
  }
}
