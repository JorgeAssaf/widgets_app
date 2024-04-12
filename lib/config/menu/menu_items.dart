import 'package:flutter/material.dart';

class MenuItems {
  final String title;
  final String subTitle;
  final String route;
  final IconData icon;

  const MenuItems(
      {required this.title,
      required this.subTitle,
      required this.route,
      required this.icon});
}

const appMenuItems = <MenuItems>[
  MenuItems(
    title: 'Botones',
    subTitle: 'Botones de Material 3',
    route: '/buttons',
    icon: Icons.smart_button_outlined,
  ),
  MenuItems(
    title: 'Tarjetas',
    subTitle: 'Tarjetas de Material 3',
    route: '/cards',
    icon: Icons.credit_card,
  ),
];
