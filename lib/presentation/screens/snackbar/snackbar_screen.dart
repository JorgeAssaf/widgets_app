import 'package:flutter/material.dart';

class SnackBarScreen extends StatelessWidget {
  const SnackBarScreen({super.key});

  void showSnackBar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();
    final snackbarWidget = SnackBar(
      content: const Text('SnackBar de Material 3'),
      action: SnackBarAction(
        label: 'Cerrar',
        onPressed: () {
          ScaffoldMessenger.of(context).hideCurrentSnackBar();
        },
      ),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackbarWidget);
  }

  void openDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Dialogo de Material 3'),
          content: const Text('Este es un dialogo de Material 3'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Cerrar'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SnackBar Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(
                child: const Text('Ver Licencias'),
                onPressed: () {
                  showAboutDialog(
                      context: context,
                      applicationName: 'Flutter Widgets App',
                      applicationVersion: '1.0.0',
                      applicationLegalese: '© 2021 Flutter Widgets App',
                      children: const [
                        SizedBox(height: 20),
                        Text('Licencia MIT'),
                        Text('Licencia Apache 2.0'),
                      ],
                      anchorPoint: const Offset(1.0, 1.0),
                      applicationIcon: const FlutterLogo(
                        size: 32,
                      ));
                }),
            FilledButton.tonal(
                child: const Text('Abrir dialogo'),
                onPressed: () => openDialog(context)),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            showSnackBar(context);
          },
          icon: const Icon(Icons.remove_red_eye_outlined),
          label: const Text('Snackbar')),
    );
  }
}
