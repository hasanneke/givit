import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class InitBottomNavigationBar {
  final List<BottomNavigationBarItem> items = [
    const BottomNavigationBarItem(
      activeIcon: Icon(Icons.home),
      icon: Icon(Icons.home_outlined),
      label: 'Home',
    ),
    const BottomNavigationBarItem(
      activeIcon: Icon(Icons.add),
      icon: Icon(Icons.add),
      label: 'Share',
    ),
    const BottomNavigationBarItem(
      activeIcon: Icon(Icons.person),
      icon: Icon(Icons.person_outline),
      label: 'Profil',
    ),
  ];
  int calculateSelectedIndex(BuildContext context) {
    final location = GoRouterState.of(context).fullPath ?? '';
    if (location.startsWith('/home')) {
      return 0;
    }
    if (location.startsWith('/share')) {
      return 1;
    }
    if (location.startsWith('/profile')) {
      return 2;
    }
    return 0;
  }

  void onItemTapped(int index, BuildContext context) {
    switch (index) {
      case 0:
        GoRouter.of(context).go('/home');
        break;
      case 1:
        GoRouter.of(context).go('/share');
        break;
      case 2:
        GoRouter.of(context).go('/profile');
        break;
    }
  }
}
