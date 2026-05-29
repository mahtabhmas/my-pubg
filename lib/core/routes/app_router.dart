import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../features/home/home_screen.dart';
import '../../features/feed/feed_screen.dart';
import '../../features/friends/friends_screen.dart';
import '../../features/club/club_screen.dart';
import '../../features/match/match_screen.dart';
import '../../features/live/live_screen.dart';
import '../../features/equipment/equipment_screen.dart';
import '../../features/mod_menu/mod_menu_screen.dart';
import '../../features/profile/profile_screen.dart';
import '../../features/stats/stats_screen.dart';
import '../../features/squad/squad_screen.dart';
import '../../features/events/events_screen.dart';
import '../../features/gifts/gifts_screen.dart';
import '../../features/settings/settings_screen.dart';
import '../../features/auth/auth_screen.dart';
import '../../features/key_activation/key_screen.dart';
import '../shell/main_shell.dart';

final appRouter = GoRouter(
  initialLocation: '/home',
  routes: [
    ShellRoute(
      builder: (context, state, child) => MainShell(child: child),
      routes: [
        GoRoute(path: '/home',          builder: (c, s) => const HomeScreen()),
        GoRoute(path: '/feed',          builder: (c, s) => const FeedScreen()),
        GoRoute(path: '/friends',       builder: (c, s) => const FriendsScreen()),
        GoRoute(path: '/club',          builder: (c, s) => const ClubScreen()),
        GoRoute(path: '/match',         builder: (c, s) => const MatchScreen()),
        GoRoute(path: '/live',          builder: (c, s) => const LiveScreen()),
        GoRoute(path: '/equipment',     builder: (c, s) => const EquipmentScreen()),
        GoRoute(path: '/mod-menu',      builder: (c, s) => const ModMenuScreen()),
        GoRoute(path: '/profile',       builder: (c, s) => const ProfileScreen()),
        GoRoute(path: '/stats',         builder: (c, s) => const StatsScreen()),
        GoRoute(path: '/squad',         builder: (c, s) => const SquadScreen()),
        GoRoute(path: '/events',        builder: (c, s) => const EventsScreen()),
        GoRoute(path: '/gifts',         builder: (c, s) => const GiftsScreen()),
        GoRoute(path: '/settings',      builder: (c, s) => const SettingsScreen()),
        GoRoute(path: '/key-activation',builder: (c, s) => const KeyActivationScreen()),
      ],
    ),
    GoRoute(path: '/auth', builder: (c, s) => const AuthScreen()),
  ],
);
