import 'package:flutter/material.dart';
import '../../widgets/book_detail_dialog.dart';

class BookGrid extends StatelessWidget {
  const BookGrid({super.key});

  final List<String> bookTitles = const [
    'Crepúsculo',
    'Fausto',
    'Game of Thrones',
    'Harry Potter',
    'Leyes de Fuego',
    'Papelucho',
    'El Perfume',
    'Reyes Caídos',
    'Raro?',
  ];

  final List<String> bookDescriptions = const [
    'Un amor imposible entre un vampiro y una humana.',
    'La eterna lucha entre el bien y el mal.',
    'El juego por el trono más codiciado.',
    'Un joven mago destinado a salvar el mundo.',
    'Una historia apasionante sobre el fuego y las leyes.',
    'Las aventuras de un niño curioso y valiente.',
    'Un viaje a través de los sentidos y el olfato.',
    'Una batalla épica en un reino olvidado.',
    'Un libro que desafía las normas de lo común.',
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,
        childAspectRatio: 0.7,
      ),
      itemCount: bookTitles.length,
      itemBuilder: (context, index) {
        return BookCard(
          title: bookTitles[index],
          image: 'assets/images/book${index + 1}.jpg',
          description: bookDescriptions[index],
        );
      },
    );
  }
}

class BookCard extends StatelessWidget {
  final String title;
  final String image;
  final String description;

  const BookCard({
    required this.title,
    required this.image,
    required this.description,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showDialog(
          context: context,
          builder: (context) => BookDetailDialog(
            title: title,
            image: image,
            description: description,
          ),
        );
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        elevation: 4.0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(8.0),
                  topRight: Radius.circular(8.0),
                ),
                child: Image.asset(
                  image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                title,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
