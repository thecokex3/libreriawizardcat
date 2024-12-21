import 'package:flutter/material.dart';
import 'package:gatolib/screens/home_screen.dart';

void main() => runApp(const LibreriaWizardCatApp());

class LibreriaWizardCatApp extends StatelessWidget {
  const LibreriaWizardCatApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Libreria Wizard Cat',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: const Color(0xFF1B263B),
      ),
      home: const HomeScreen(),
    );
  }
}
