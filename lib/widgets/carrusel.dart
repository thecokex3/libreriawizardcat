import 'package:flutter/material.dart';

class Carrusel extends StatelessWidget {
  const Carrusel({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: PageView(
        children: const [
          CarruselImage(assetPath: 'assets/images/book1.jpg'),
          CarruselImage(assetPath: 'assets/images/book2.jpg'),
          CarruselImage(assetPath: 'assets/images/book3.jpg'),
        ],
      ),
    );
  }
}

class CarruselImage extends StatelessWidget {
  final String assetPath;

  const CarruselImage({required this.assetPath, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        image: DecorationImage(
          image: AssetImage(assetPath),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
