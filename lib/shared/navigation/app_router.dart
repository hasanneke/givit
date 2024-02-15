import 'package:flutter/material.dart';
import 'package:givit/features/home/view/home_page.dart';
import 'package:givit/features/login/view/login_view.dart';
import 'package:givit/features/product_detail/product_detail_page.dart';
import 'package:givit/features/profile/profile_page.dart';
import 'package:givit/features/profile/view/profile_view.dart';
import 'package:givit/features/register/view/register_view.dart';
import 'package:givit/features/share/share_post.dart';
import 'package:givit/shared/navigation/bottom_navigator/scaffold_with_navigation_bar.dart';

import 'package:go_router/go_router.dart';

final appRouter = GoRouter(
  initialLocation: '/home',
  routes: [
    GoRoute(
      path: '/login',
      builder: (context, state) => const LoginPage(),
    ),
    GoRoute(
      path: '/register',
      builder: (context, state) => const RegisterPage(),
    ),
    ShellRoute(
      builder: (context, state, child) => ScaffoldWithNavigationBar(
        child: child,
      ),
      routes: [
        GoRoute(
          path: '/home',
          builder: (context, state) => const HomePage(),
        ),
        GoRoute(
          path: '/share',
          builder: (context, state) => const SharePostPage(),
        ),
        GoRoute(
          path: '/profile',
          builder: (context, state) => const ProfilePage(),
        ),
        GoRoute(
          path: '/product-detail',
          builder: (context, state) => const ProductDetailPage(),
        ),
      ],
    ),
  ],
);
