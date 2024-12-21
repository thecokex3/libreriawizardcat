import 'package:flutter/material.dart';
import '../../widgets/drawer_menu.dart';
import '../../widgets/carrusel.dart';
import '../../widgets/book_grid.dart';
import '../../screens/login_dialog.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
            icon: const Icon(Icons.person),
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) => const LoginDialog(),
              );
            },
          ),
        ],
      ),
      drawer: const DrawerMenu(),
      body: ListView(
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
