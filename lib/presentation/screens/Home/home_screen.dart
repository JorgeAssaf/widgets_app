import 'package:flutter/material.dart';
import 'package:widgets_app/config/menu/menu_items.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Widgets App + Material 3'),
      ),
      body: _HomeView(),
    );
  }
}

class _HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: appMenuItems.length,
      itemBuilder: (context, index) {
        final item = appMenuItems[index];
        return __CustomListTile(item: item);
      },
    );
  }
}

class __CustomListTile extends StatelessWidget {
  final MenuItems item;
  const __CustomListTile({
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return ListTile(
      leading: Icon(
        item.icon,
        color: colors.primary,
      ),
      trailing: const Icon(Icons.arrow_forward_ios_rounded),
      title: Text(item.title),
      subtitle: Text(item.subTitle),
      onTap: () {
        Navigator.pushNamed(context, item.route);
      },
    );
  }
}
