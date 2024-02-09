import 'package:flutter/material.dart';

import 'package:givit/shared/navigation/bottom_navigator/bnb_init.dart';

class ScaffoldWithNavigationBar extends StatelessWidget {
  ScaffoldWithNavigationBar({super.key, required this.child});
  final Widget child;
  final InitBottomNavigationBar _initBottomNavigationBar =
      InitBottomNavigationBar();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: child,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: _initBottomNavigationBar.items,
        currentIndex: _initBottomNavigationBar.calculateSelectedIndex(context),
        onTap: (value) => _initBottomNavigationBar.onItemTapped(value, context),
      ),
    );
  }
}
