import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/presentation/providers/counter_provider.dart';
import 'package:widgets_app/presentation/providers/theme_provider.dart';

class CounterScreen extends ConsumerWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final value = ref.watch(counterProvider);
    final isDarkmode = ref.watch(isDarkProvider);
    final textStyle = Theme.of(context).textTheme.titleLarge;
    return Scaffold(
        appBar: AppBar(
          title: const Text('Contador'),
          actions: [
            IconButton(
              icon: Icon(isDarkmode
                  ? Icons.wb_sunny_outlined
                  : Icons.dark_mode_outlined),
              onPressed: () {
                ref.read(isDarkProvider.notifier).state = !isDarkmode;
              },
            ),
          ],
        ),
        body: Center(child: Text('Valor: $value ', style: textStyle)),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            ref.read(counterProvider.notifier).state++;
          },
          tooltip: 'Incrementar',
          child: const Icon(Icons.add),
        ));
  }
}
