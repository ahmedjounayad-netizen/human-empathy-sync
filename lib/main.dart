import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const EmpathySyncApp());
}

class EmpathySyncApp extends StatelessWidget {
  const EmpathySyncApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Empathy Sync',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xFF121212),
        primarySwatch: Colors.blueGrey,
      ),
      home: const HomeScreen(),
    );
  }
}
