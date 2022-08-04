import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:wishey/pages/home/home_page.dart';
import 'package:wishey/pages/wishlist/wishlist_page.dart';

final router = GoRouter(
  navigatorBuilder: (_, __, child) => Scaffold(
    body: SafeArea(child: child),
  ),
  routes: [
    GoRoute(
      path: '/',
      name: 'home',
      builder: (_, __) => const HomePage(),
      routes: [
        GoRoute(
          path: 'wish/:id',
          name: 'wish',
          builder: (_, state) => WishlistPage(
            id: state.params['id'] ?? '',
          ),
        ),
      ],
    ),
  ],
);
