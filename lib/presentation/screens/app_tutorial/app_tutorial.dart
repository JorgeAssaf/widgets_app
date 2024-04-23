import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class _SlideInfo {
  final String title;
  final String caption;
  final String image;

  const _SlideInfo({
    required this.title,
    required this.caption,
    required this.image,
  });
}

final slides = <_SlideInfo>[
  const _SlideInfo(
    title: 'Busca Comida',
    caption:
        'Duis sint sit sint aliqua officia culpa aute in consequat. Laborum irure reprehenderit pariatur e do ',
    image: 'assets/images/1.png',
  ),
  const _SlideInfo(
    title: 'Selecciona tu Comida',
    caption:
        'Duis sint sit sint aliqua officia culpa aute in consequat. Laborum irure reprehenderit pariatur ',
    image: 'assets/images/2.png',
  ),
  const _SlideInfo(
    title: 'Recibe tu Comida',
    caption:
        'Duis sint sit sint aliqua officia culpa aute in consequat. Laborum irure reprehenderit pariatur ',
    image: 'assets/images/3.png',
  ),
];

class AppTutorialScreen extends StatefulWidget {
  const AppTutorialScreen({super.key});

  @override
  State<AppTutorialScreen> createState() => _AppTutorialScreenState();
}

class _AppTutorialScreenState extends State<AppTutorialScreen> {
  final PageController _pageController = PageController();
  bool _isLastPage = false;
  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      final page = _pageController.page ?? 0;
      if (!_isLastPage && page >= (slides.length - 1.5)) {
        setState(() {
          _isLastPage = true;
        });
      }
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        PageView(
          controller: _pageController,
          physics: const BouncingScrollPhysics(),
          children: slides
              .map((slide) => _Slide(
                  title: slide.title,
                  caption: slide.caption,
                  image: slide.image))
              .toList(),
        ),
        Positioned(
          top: 30,
          right: 10,
          child: TextButton(
            onPressed: () => context.pop(),
            child: const Text('Saltar'),
          ),
        ),
        _isLastPage
            ? Positioned(
                bottom: 20,
                right: 20,
                child: FadeInRight(
                  delay: const Duration(milliseconds: 500),
                  child: ElevatedButton(
                    onPressed: () {
                      context.pop();
                    },
                    child: const Text('Empezar'),
                  ),
                ),
              )
            : Container(),
      ]),
    );
  }
}

class _Slide extends StatelessWidget {
  final String title;
  final String caption;
  final String image;

  const _Slide({
    required this.title,
    required this.caption,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    final tittleStyle = Theme.of(context).textTheme.titleLarge;
    final captionStyle = Theme.of(context).textTheme.bodyMedium;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(image: AssetImage(image)),
            const SizedBox(height: 20.0),
            Text(
              title,
              style: tittleStyle,
            ),
            const SizedBox(height: 10.0),
            Text(
              caption,
              style: captionStyle,
            ),
          ],
        ),
      ),
    );
  }
}
