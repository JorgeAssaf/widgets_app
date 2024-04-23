import 'package:flutter/material.dart';

class ProgressScreen extends StatelessWidget {
  const ProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Progress Screen'),
      ),
      body: const _ProgressView(),
    );
  }
}

class _ProgressView extends StatelessWidget {
  const _ProgressView();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: [
        const SizedBox(
          height: 50,
        ),
        const CircularProgressIndicator(),
        const SizedBox(
          height: 10,
        ),
        const Text('Circular Progress Indicator'),
        const SizedBox(
          height: 10,
        ),
        StreamBuilder(
            stream: Stream.periodic(const Duration(seconds: 1),
                    (computationCount) => (computationCount) / 100)
                .takeWhile((value) => value <= 1.0),
            builder: (context, snapshot) {
              final data = snapshot.data ?? 0.0;
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircularProgressIndicator(
                      backgroundColor: Theme.of(context)
                          .colorScheme
                          .primary
                          .withOpacity(0.2),
                      value: data,
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                      child: LinearProgressIndicator(
                        minHeight: 4,
                        borderRadius: BorderRadius.circular(0),
                        semanticsLabel: 'Linear Progress Indicator',
                        semanticsValue: data.toString(),
                        value: data,
                      ),
                    ),
                  ],
                ),
              );
            }),
      ]),
    );
  }
}
