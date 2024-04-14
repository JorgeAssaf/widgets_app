import 'package:flutter/material.dart';

const List<Map<String, dynamic>> cards = [
  {
    'elevation': 0.0,
    'label': 'Elevation 0.0',
  },
  {
    'elevation': 1.0,
    'label': 'Elevation 1.0',
  },
  {
    'elevation': 2.0,
    'label': 'Elevation 2.0',
  },
  {
    'elevation': 3.0,
    'label': 'Elevation 3.0',
  },
  {
    'elevation': 4.0,
    'label': 'Elevation 4.0',
  },
  {
    'elevation': 5.0,
    'label': 'Elevation 5.0',
  },
  {
    'elevation': 6.0,
    'label': 'Elevation 6.0',
  },
  {
    'elevation': 7.0,
    'label': 'Elevation 7.0',
  },
  {
    'elevation': 8.0,
    'label': 'Elevation 8.0',
  },
  {
    'elevation': 9.0,
    'label': 'Elevation 9.0',
  },
];

class CardsScreen extends StatelessWidget {
  const CardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cards de Material 3'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ...cards.map(
              (card) => _CardsType1(
                elevation: card['elevation'],
                label: card['label'],
              ),
            ),
            ...cards.map(
              (card) => _CardsType2(
                elevation: card['elevation'],
                label: card['label'],
              ),
            ),
            ...cards.map(
              (card) => _CardsType3(
                elevation: card['elevation'],
                label: card['label'],
              ),
            ),
            ...cards.map(
              (card) => _CardsType4(
                elevation: card['elevation'],
                label: card['label'],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _CardsType1 extends StatelessWidget {
  final String label;
  final double elevation;

  const _CardsType1({
    required this.label,
    required this.elevation,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: elevation,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: IconButton(
                  icon: const Icon(Icons.more_vert_outlined),
                  onPressed: () {},
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  label,
                ),
              ),
            ],
          ),
        ));
  }
}

class _CardsType2 extends StatelessWidget {
  final String label;
  final double elevation;

  const _CardsType2({
    required this.label,
    required this.elevation,
  });

  @override
  Widget build(BuildContext context) {
    return Card.outlined(
        elevation: elevation,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: IconButton(
                  icon: const Icon(Icons.more_vert_outlined),
                  onPressed: () {},
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  label,
                ),
              ),
            ],
          ),
        ));
  }
}

class _CardsType3 extends StatelessWidget {
  final String label;
  final double elevation;

  const _CardsType3({
    required this.label,
    required this.elevation,
  });

  @override
  Widget build(BuildContext context) {
    return Card.outlined(
        color: Theme.of(context).colorScheme.surfaceVariant,
        elevation: elevation,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: IconButton(
                  icon: const Icon(Icons.more_vert_outlined),
                  onPressed: () {},
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  label,
                ),
              ),
            ],
          ),
        ));
  }
}

class _CardsType4 extends StatelessWidget {
  final String label;
  final double elevation;

  const _CardsType4({
    required this.label,
    required this.elevation,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
        clipBehavior: Clip.hardEdge,
        elevation: elevation,
        child: Stack(
          children: [
            Image.network(
              'https://picsum.photos/id/${elevation.toInt()}/600/350',
              height: 350,
              fit: BoxFit.cover,
            ),
            Align(
              alignment: Alignment.topRight,
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(20.0)),
                  color: Colors.white,
                ),
                child: IconButton(
                  icon: const Icon(Icons.more_vert_outlined),
                  onPressed: () {},
                ),
              ),
            ),
          ],
        ));
  }
}
