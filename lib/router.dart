import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';

import 'screens/home_screen.dart';


final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen(),
    ),
  ],
);