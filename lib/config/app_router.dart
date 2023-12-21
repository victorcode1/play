import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:play/main.dart';
import 'package:play/ui/list_search.dart';
import 'package:play/ui/list_songs.dart';

final router = GoRouter(
  initialLocation: '/',
  navigatorKey: _rootNavigatorKey,
  routes: [
    ShellRoute(
      navigatorKey: _shellNavigatorKey,
      pageBuilder: (context, state, child) {
        return NoTransitionPage(child: SearchScreen(child: child));
      },
      routes: [
        GoRoute(
          path: '/',
          parentNavigatorKey: _shellNavigatorKey,
          pageBuilder: (context, state) {
            return const NoTransitionPage(child: ListSearch());
          },
        ),
        GoRoute(
          path: '/songs',
          parentNavigatorKey: _shellNavigatorKey,
          pageBuilder: (context, state) {
            final search = state.extra as String;
            debugPrint('Search: $search');
            return NoTransitionPage(child: ListSongs(data: search));
          },
        ),
      ],
    ),
  ],
);
final _rootNavigatorKey = GlobalKey<NavigatorState>();

final _shellNavigatorKey = GlobalKey<NavigatorState>();
