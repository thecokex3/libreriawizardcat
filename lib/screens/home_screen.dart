import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../../widgets/drawer_menu.dart';
import '../../widgets/carrusel.dart';
import '../../widgets/book_grid.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final User? user = FirebaseAuth.instance.currentUser;
    print('Usuario actual: $user');

    return Scaffold(
      appBar: AppBar(
        title: const Text('Librería Wizard Cat'),
        backgroundColor: const Color(0xFF5A3921),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              FirebaseAuth.instance.signOut().then((value) {
                Navigator.pushReplacementNamed(context, '/login');
              });
            },
          ),
        ],
      ),
      drawer: const DrawerMenu(),
      body: user == null
          ? Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/login');
                },
                child: const Text('Inicia sesión para continuar'),
              ),
            )
          : ListView(
              children: const [
                Carrusel(),
                SectionTitle(title: 'Novedades'),
                BookGrid(),
                SectionTitle(title: 'Más Populares'),
                BookGrid(),
                SectionTitle(title: 'Más Vendidos'),
                BookGrid(),
              ],
            ),
    );
  }
}

class SectionTitle extends StatelessWidget {
  final String title;

  const SectionTitle({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Color(0xFFF9F7F3),
        ),
      ),
    );
  }
}
