import 'package:flutter/material.dart';
import 'package:flutter_go_router/main_srceen.dart';
import 'package:go_router/go_router.dart';

import 'a_screen.dart';
import 'b_screen.dart';
import 'c_screen.dart';
import 'd_screen.dart';
import 'e_screen.dart';
import 'splash_screen.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();

final GoRouter routers = GoRouter(
  initialLocation: '/',
  navigatorKey: _rootNavigatorKey,
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const SplashScreen();
      },
      routes: <RouteBase>[
        StatefulShellRoute.indexedStack(
          builder: (BuildContext context, GoRouterState state,
              StatefulNavigationShell navigationShell) {
            return MainScreen(navigationShell: navigationShell);
          },
          branches: [
            StatefulShellBranch(routes: [
              GoRoute(
                path: 'a',
                builder: (BuildContext context, GoRouterState state) =>
                    const AScreen(),
              ),
            ]),
            StatefulShellBranch(routes: [
              GoRoute(
                path: 'b',
                builder: (BuildContext context, GoRouterState state) =>
                    const BScreen(),
              ),
            ]),
            StatefulShellBranch(routes: [
              GoRoute(
                path: 'c',
                builder: (BuildContext context, GoRouterState state) =>
                    const CScreen(),
              ),
            ]),
            StatefulShellBranch(routes: [
              GoRoute(
                path: 'd',
                builder: (BuildContext context, GoRouterState state) =>
                    const DScreen(),
              ),
            ]),
            StatefulShellBranch(routes: [
              GoRoute(
                path: 'e',
                builder: (BuildContext context, GoRouterState state) =>
                    const EScreen(),
              ),
            ]),
          ],
        ),
      ],
    ),
  ],
);