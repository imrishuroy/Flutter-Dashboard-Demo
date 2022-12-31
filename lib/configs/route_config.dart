import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '/constants/route_constants.dart';
import '/screens/experiment_screen.dart';
import '/screens/graph_screen.dart';
import '/screens/home_screen.dart';
import '/screens/root_layout.dart';

class RouteConfig {
  static final route = GoRouter(
    routes: [
      GoRoute(
        name: RouteConstants.home,
        path: '/',
        pageBuilder: (context, state) => MaterialPage<void>(
          child: RootLayout(
            currentIndex: 0,
            child: const HomeScreen(),
          ),
        ),
      ),
      GoRoute(
        name: RouteConstants.graphScreen,
        path: '/graph',
        pageBuilder: (context, state) => MaterialPage<void>(
          child: RootLayout(
            currentIndex: 1,
            child: const GraphScreen(),
          ),
        ),
      ),
      GoRoute(
        name: RouteConstants.experimentScreen,
        path: '/experiment',
        pageBuilder: (context, state) => MaterialPage<void>(
          child: RootLayout(
            currentIndex: 2,
            child: const ExperimentScreen(),
          ),
        ),
      ),
    ],
  );
}
