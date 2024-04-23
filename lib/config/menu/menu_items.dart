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
    title: 'Cambiar Tema',
    subTitle: 'Cambiador de Tema',
    route: '/theme-changer',
    icon: Icons.color_lens,
  ),
  MenuItems(
    title: 'Counter',
    subTitle: 'Contador de Material 3',
    route: '/counter',
    icon: Icons.add_circle_outline,
  ),
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
  MenuItems(
    title: 'Progress Indicators',
    subTitle: 'Indicadores de progreso',
    route: '/progress',
    icon: Icons.refresh_rounded,
  ),
  MenuItems(
    title: 'SnackBar',
    subTitle: 'SnackBar de Material 3',
    route: '/snackbar',
    icon: Icons.notifications,
  ),
  MenuItems(
    title: 'Animaciones',
    subTitle: 'Animaciones de Material 3',
    route: '/animated',
    icon: Icons.animation,
  ),
  MenuItems(
    title: 'Controles de UI',
    subTitle: 'Controles de UI de Material 3',
    route: '/ui-controls',
    icon: Icons.settings,
  ),
  MenuItems(
    title: 'Tutorial de la App',
    subTitle: 'Tutorial de la App',
    route: '/app-tutorial',
    icon: Icons.school,
  ),
  MenuItems(
    title: 'Scroll Infinito',
    subTitle: 'Scroll Infinito y Refresh de Material 3',
    route: '/infinite-scroll',
    icon: Icons.vertical_align_bottom,
  ),
];
