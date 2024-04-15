import 'package:flutter/material.dart';

class ButtonsScreen extends StatelessWidget {
  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Botones de Material 3'),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: Wrap(
            spacing: 8.0,
            alignment: WrapAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {}, child: const Text('ElevatedButton')),
              OutlinedButton(
                  onPressed: () {}, child: const Text('OutlinedButton')),
              TextButton(onPressed: () {}, child: const Text('TextButton')),
              ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.add),
                label: const Text('ElevatedButton.icon'),
              ),
              IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
              FilledButton(onPressed: () {}, child: const Text('FilledButton')),
              FilledButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.add),
                  label: const Text('FilledButton.icon')),
              TextButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.add),
                label: const Text('TextButton.icon'),
              ),
              FilledButton.tonal(
                  onPressed: () {}, child: const Text('FilledButton.tonal')),
              _MyButton()
            ],
          ),
        ),
      ),
    );
  }
}

class _MyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(4.0),
      child: Material(
        color: Theme.of(context).colorScheme.primary,
        child: InkWell(
          onTap: () {},
          child: const Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
            child: Text(
              'MyButton',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
