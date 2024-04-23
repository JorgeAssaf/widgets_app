import 'package:go_router/go_router.dart' show GoRouter, GoRoute;
import 'package:widgets_app/presentation/screens/screens.dart';

// GoRouter configuration
final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/buttons',
      builder: (context, state) => const ButtonsScreen(),
    ),
    GoRoute(
      path: '/cards',
      builder: (context, state) => const CardsScreen(),
    ),
    GoRoute(
      path: '/progress',
      builder: (context, state) => const ProgressScreen(),
    ),
    GoRoute(
      path: '/snackbar',
      builder: (context, state) => const SnackBarScreen(),
    ),
    GoRoute(
      path: '/animated',
      builder: (context, state) => const AnimatedScreen(),
    ),
    GoRoute(
      path: '/ui-controls',
      builder: (context, state) => const UiControlsScreen(),
    ),
    GoRoute(
      path: '/app-tutorial',
      builder: (context, state) => const AppTutorialScreen(),
    ),
    GoRoute(
        path: '/infinite-scroll',
        builder: (context, state) => const InfiniteScrollScreen()),
    GoRoute(
        path: '/counter', builder: (context, state) => const CounterScreen()),
    GoRoute(
        path: '/theme-changer',
        builder: (context, state) => const ThemeChangerScreen()),
  ],
);
